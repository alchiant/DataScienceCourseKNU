setwd("/Users/alchi/Library/Mobile Documents/com~apple~CloudDocs/Desktop/KNU Project Management/Study process/software construction/data/")

# 1. Написатифункцію pmean,якаобчислюєсереднєзначення(mean) забруднення сульфатами або нітратами серед заданого переліка моніторів
pmean("specdata", "sulfate", 1:332)
pmean("specdata", "sulfate", 1:10)
pmean("specdata", "sulfate", 55)
pmean("specdata", "nitrate")

# 2. Написати функцію complete, яка виводить кількість повних спостережень для кожного файлу
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)

# 3. Написати функцію corr, яка приймає два аргументи: directory та threshold (порогове значення, за замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та нітратами для моніторів, кількість повних спостережень для яких більше порогового значення
cr <- corr("specdata", 80)
head(cr); summary(cr)
cr <- corr("specdata", 200)
head(cr); summary(cr)
cr <- corr("specdata", 8000)
head(cr); summary(cr); length(cr)