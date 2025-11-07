# 7. Reading files: CSV, Excel, XML
# CSV
df_csv <- read.csv('D:/R Program/item.csv', stringsAsFactors = FALSE)
print(df_csv)

# Excel (requires readxl)
install.packages('readxl')
library(readxl)
df_xls <- read_excel('D:/R Program/item.xlsx', sheet = 1)
print(df_xls)

# XML (requires XML package)
install.packages('XML')
library(XML)
xml_doc <- xmlParse('D:/R Program/item.xml')
xml_data <- xmlToDataFrame(nodes = getNodeSet(xml_doc, "//record"))
print(xml_data)