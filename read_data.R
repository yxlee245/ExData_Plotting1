# Read in data and get subset of data for 2007-02-01 and 2007-02-02
df <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";",
                 na.strings = "?", stringsAsFactors = FALSE)
df_subset <- subset(df, Date == "1/2/2007" | Date == "2/2/2007")
rm(df)