# 1. Завантажити файл з даними, прочитати за допомогою команди read.csv
csv = read.csv("/Users/alchi/Library/Mobile Documents/com~apple~CloudDocs/Desktop/KNU Project Management/Study process/software construction/data/hw1_data.csv")
colnames(csv)

# 2. Вивеcnb перші 6 строк фрейму даних
head(csv, 6)

# 3. Вивести кількість спостерігань (строк) в дата фреймі
nrow(csv)

# 4. Вивеcnb останні 10 строк дата фрейму
tail(csv, 10)

# 5. Вивести кількість значень «NA» в стовпці «Ozone»
length(which(is.na(csv$Ozone)))

# 6. Вивести середнє значення стовпця «Ozone». Виключити «NA» значення
mean(csv$Ozone[!is.na(csv$Ozone)])

# 7. Вивести частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Вивести середнє значень «Solar.R» в цьому наборі даних (subset).
subset = subset(csv, (csv$Ozone > 31) & (csv$Temp > 90))
subset
mean(subset$Solar.R)

# 8. Вивести середнє значення для «Temp» для червня
mean(subset(csv, (csv$Month == 6))$Temp)

# 9. Вивести максимальне значення «Ozone» для травня
max(subset(csv, (csv$Month == 5))$Ozone, na.rm = TRUE)


