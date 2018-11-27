all: report_length.html report_start.html diagram.png
	# include here so it knows to run it when we make all
	# will only run if something in the file & dependencies have changed
	# could also just keep dependencies in there, eg. all: report.html histogram.png histogram.tsv

clean:
	rm -f words.txt lengths.tsv starting_letters.tsv 
	rm -f length_histogram.png startingletter_histogram.png 
	rm -f report_length.md report_length.html report_start.md report_start.html
	rm -f diagram.png diagram.dot
	# remove files, run by Build Tab> Clean All or in shell, make clean

diagram.png: diagram.dot
	dot -Tpng < $< > $@
	rm -f diagram.dot

diagram.dot: Makefile makefile2dot.py
	python makefile2dot.py < $< >$@

lengths: report_length.html

starts: report_start.html

report_length.html: report_length.rmd length_histogram.png
	Rscript -e 'rmarkdown::render("$<")'

report_start.html: report_start.rmd startingletter_histogram.png
	Rscript -e 'rmarkdown::render("$<")'

length_histogram.png: lengths.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")) + theme_minimal(); ggsave("$@")'
	rm Rplots.pdf
	# this only runs if something in histogram.tsv has changed

startingletter_histogram.png: starting_letters.tsv
	Rscript -e 'library(ggplot2); ggplot(data=read.delim("$<"),aes(x=Starting_letter, y=Freq)) + geom_bar(stat="identity") + theme_minimal(); ggsave("$@")'
	rm Rplots.pdf

lengths.tsv: length.r words.txt
	Rscript $<
	# if dependencies (histogram.R or words.txt) have changed, execute the first one ($<)
	# https://stackoverflow.com/questions/3220277/what-do-the-makefile-symbols-and-mean

starting_letters.tsv: starting_letter.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words 
# For mac/linux users, can simply copy over file from /usr/share/dict/words instead of downloading
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
