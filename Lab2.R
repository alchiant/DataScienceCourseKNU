# 1. Створити вектор v із 100 елементів командою
v <- rnorm(100)
v[10]
v[[10]]
v[10:20]
v[20:30]
v[v > 0]

# 2. Створити фрейм (data frame) y командою
y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE))
y
tail(y, 10)
y[10:20,]
y$b[10]
y$cc

# 1. Створити вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. Для цього вектору: вивести всі елементи, які не NA; підрахувати середнє значення всіх елементів цього вектору без NA значень та з NA значеннями
z <- c(1, 2, 3, NA, 4, NA, 5, NA)
z
z[!is.na(z)]
mean(z[!is.na(z)])
mean(z)
