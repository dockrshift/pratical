# Install and load required packages
install.packages("arules")
library(arules)
# -------------------------------------------
# Step 1: Create a sample transaction dataset
# -------------------------------------------
transactions <- list(
  c("Milk", "Bread", "Eggs"),
  c("Milk", "Bread"),
  c("Milk", "Eggs"),
  c("Bread", "Butter"),
  c("Milk", "Bread", "Butter", "Eggs"),
  c("Bread", "Butter"),
  c("Milk", "Eggs")
)
# Convert to transaction format
txn_data <- as(transactions, "transactions")
# View the transaction summary
summary(txn_data)
inspect(txn_data)

# -------------------------------------------
# 1️⃣ Technique 1: Apriori Algorithm
# -------------------------------------------
cat("\n--- Apriori Algorithm Results ---\n")
rules_apriori <- apriori(txn_data, parameter = list(support = 0.3, confidence = 0.7, minlen = 2))
# Display generated rules
inspect(rules_apriori)
# Sort rules by lift
sorted_rules_apriori <- sort(rules_apriori, by = "lift", decreasing = TRUE)
inspect(sorted_rules_apriori[1:5])

# -------------------------------------------
# 2️⃣ Technique 2: Eclat Algorithm
# -------------------------------------------
cat("\n--- Eclat Algorithm Results ---\n")
# Use Eclat to find frequent itemsets
freq_items_eclat <- eclat(txn_data,parameter = list(support = 0.3, minlen = 2))
# Display frequent itemsets
inspect(freq_items_eclat)
# Generate association rules from frequent itemsets (manually)
rules_eclat <- ruleInduction(freq_items_eclat, txn_data, confidence = 0.7)
inspect(rules_eclat)

# -------------------------------------------
# Step 3: Visualization (optional)
# -------------------------------------------
install.packages("arulesViz")
library(arulesViz)
# Plot the Apriori rules
plot(rules_apriori, method = "graph", control = list(type = "items"))
