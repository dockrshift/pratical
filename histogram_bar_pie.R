# Program: Plot Histogram, Bar Chart, and Pie Chart on Sample Data

# -------------------------------
# Sample Data
# -------------------------------
marks <- c(56, 78, 45, 90, 82, 67, 89, 73, 55, 69)

# -------------------------------
# 1. Histogram
# -------------------------------
hist(marks,
     main = "Histogram of Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

# -------------------------------
# 2. Bar Chart
# -------------------------------
subjects <- c("Math", "Science", "English", "History", "Computer")
scores <- c(85, 90, 78, 88, 92)

barplot(scores,
        names.arg = subjects,
        col = rainbow(length(subjects)),
        main = "Bar Chart of Subject Scores",
        xlab = "Subjects",
        ylab = "Scores",
        border = "black")

# -------------------------------
# 3. Pie Chart
# -------------------------------
pie_data <- c(25, 15, 30, 10, 20)
labels <- c("Apples", "Bananas", "Grapes", "Oranges", "Mangoes")

pie(pie_data,
    labels = labels,
    col = rainbow(length(pie_data)),
    main = "Pie Chart of Fruit Distribution")
