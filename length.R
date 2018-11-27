# Read in words
words <- readLines("words.txt")
# Compute length of each word
Length <- nchar(words)
# Find frequencies of each length using the 'table' function
hist_dat <- table(Length)
# Save table as a tsv (tab-separated) file
write.table(hist_dat, "lengths.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
