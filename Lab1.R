# 1.Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
character <- "Matthias"
logical <- TRUE
numeric <- 5
integer <- 5L
complex <- 1 + 4i

# 2.Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
numeric_vector <- 5:75
vector_with_math <- c(pi, 2.71, 0, 13)
logical_vector <- rep(TRUE, 100)

# 3. Створити наступну матрицю за допомогою matrix,та за допомогою cbind або rbind
A <- matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), nrow = 4, ncol = 3)
A

a <- c(0.5, 3.9, 0, 2)
b <- c(1.3, 131, 2.2, 7)
c <- c(3.5, 2.8, 4.6, 5.1)
cbind_matrix <- cbind(a, b, c)
cbind_matrix
a <- c(0.5, 1.3, 3.5)
b <- c(3.9, 131, 2.8)
c <- c(0, 2.2, 4.6)
d <- c(2, 7, 5.1)
rbind_matrix = rbind(a, b, c, d)
rbind_matrix

# 4. Створити довільний список (list), в який включити всі базові типи
basic_list <- list(89, 12L, FALSE, 5 + 11i, "Matthias")

# 5. Створити фактор з трьома рівнями «baby», «child», «adult»
x <- factor(c("baby", "child", "adult", "adult", "adult", "child", "child", "baby", "baby"), levels = c("baby", "child", "adult"))

# 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
vector_with_NA <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
first_index_NA <- min(which(is.na(vector_with_NA)))
first_index_NA
length_NA <- length(which(is.na(vector_with_NA)))
length_NA

# 7. Створити довільний data frame та вивести в консоль
n <- c(2023, 1998, 2001)
ch <- c("Boron", "Teladi", "Kha'ak")
b <- c(TRUE, TRUE, TRUE)
data_frame <- data.frame(num = n, char = ch, bool = b)
data_frame

# 8. Змінити імена стовпців цього data frame
names(data_frame) <- c("Year", "Faction", "Existence")
data_frame








