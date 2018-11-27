words <- readLines("words.txt")
Starting_letter <- tolower(substr(words,1,1))
hist_dat <- table(Starting_letter)
write.table(hist_dat, "starting_letters.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
