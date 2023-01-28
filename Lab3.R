# 1. Написати фукцію add2(x, y), яка повертає суму двох чисел
add2 <- function(a = 0, b = 0) {
  return(a + b)
  }
add2(245,398)

# 2. Написати фукцію above(x, n), яка приймає вектор та число n, та повертає всі елементи вектору, які більше n. По замовчуванню n = 10
above = function(vector, n = 10) {return(vector[vector > n])}
above(c(5, 3, 4, 7, 3, 2, 8, 10, 56, 23), 8)
above(c(5, 3, 4, 7, 3, 2, 8, 10, 56, 23))

# 3. Написати фукцію my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0
my_ifelse <- function(x, exp, n) {
  comparingList = c("<", ">", "<=", ">=", "==")
  if (!is.element(exp, comparingList)) {
    return(x)
  }
  return(x[sapply(x, exp, n)])
}
my_ifelse(1:50, "<=", 4)

# 4. Написати фукцію columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame
columnmean <- function(x, removeNA = TRUE) {
  return(colMeans(x, na.rm = removeNA))
}
columnmean(matrix(c(1, 2, 3, NA, 5, 6, NA, 8), nrow = 2, ncol = 24), TRUE)

