setwd("/Users/alchi/Library/Mobile Documents/com~apple~CloudDocs/Desktop/KNU Project Management/Study process/software construction/data/specdata")

# 1. Написатифункцію pmean,якаобчислюєсереднєзначення(mean) забруднення сульфатами або нітратами серед заданого переліка моніторів
getcsv = function(directory, file_id) {
  return(read.csv(paste0(directory, "/", formatC(file_id, width = 3, flag = "0"), ".csv")))
}

pmean = function(directory, pollutant, id = 1:332) {
  all = NULL
  for (i in id) {
    all = c(all, getcsv(directory, i)[[pollutant]])
  }
  return(mean(all, na.rm = TRUE))
}
pmean("specdata", "sulfate", 55)
pmean("specdata", "nitrate")

# 2. Написати функцію complete, яка виводить кількість повних спостережень для кожного файлу
complete = function(directory, id = 1:332) {
  nobs = NULL
  for (i in id) {
    nobs = c(nobs, nrow(na.omit(getcsv(directory, i))))
  }
  return(data.frame(id, nobs))
}

complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)

# 3. Написати функцію corr, яка приймає два аргументи: directory та threshold (порогове значення, за замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та нітратами для моніторів, кількість повних спостережень для яких більше порогового значення
corr = function(directory, threshold = 0) {
  corelations = numeric()
  for (i in 1:332) {
    full_obs = na.omit(getcsv(directory, i))
    if (nrow(full_obs) > threshold) {
      corelations = c(corelations, cor(full_obs$sulfate, full_obs$nitrate))
    }
  }
  return(corelations)
}
cr <- corr("specdata", 200)
head(cr); summary(cr)
cr <- corr("specdata", 8000)
head(cr); summary(cr); length(cr)
