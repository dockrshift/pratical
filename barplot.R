# Program: Simple Bar Plot of Marks of Five Subjects

# Create data
subjects <- c("Math", "Science", "English", "History", "Computer")
marks <- c(85, 90, 78, 88, 92)

# Create a bar plot
barplot(marks,
        names.arg = subjects,
        col = rainbow(length(subjects)),   # colorful bars
        main = "Marks of Five Subjects",
        xlab = "Subjects",
        ylab = "Marks Obtained",
        border = "black")

# Add numerical labels above bars
text(x = seq_along(marks),
     y = marks,
     labels = marks,
     pos = 3,
     cex = 0.8,
     col = "blue")
