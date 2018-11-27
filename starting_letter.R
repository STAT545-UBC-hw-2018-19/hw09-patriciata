# Read in words
words <- readLines("words.txt")
# Extract first (starting) letter of each word using substr, and convert to lowercase
Starting_letter <- tolower(substr(words,1,1))
# Find frequencies of each starting letter using the 'table' function
hist_dat <- table(Starting_letter)
# Save table as a tsv (tab-separated) file
write.table(hist_dat, "starting_letters.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
