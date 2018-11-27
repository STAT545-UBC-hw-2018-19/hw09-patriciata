# hw09-patriciata: Homework 9
=======

This is the repository for STAT547M Homework 9 by Patricia Angkiriwang. Homework prompt can be found [here](http://stat545.com/Classroom/assignments/hw09/hw09.html). This assignment modifies and builds upon a simple automated R workflow, using the intersection of R and `make`. Original code here: https://github.com/STAT545-UBC/make-activity

Refer to [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io) for further details.

|  Assignment Files  |     |
|-----------|-------------|
|The Makefile for this assignment |[Makefile](Makefile)|
|R project file | [make-activity.Rproj](make-activity.Rproj) |
|Files used for this workflow (to generate reports)| [report_length.md](report_length.md),[length.R](length.R),[report_start.md](report_start.md),[starting_letter.R](starting_letter.R) |
|Intermediate outputs necessary for output markdown reports | [length_histogram.png](length_histogram.png), [lengths.tsv](lengths.tsv), [startingletter_histogram.png](startingletter_histogram.png), [starting_letters.tsv](starting_letters.tsv)|
|Files used to generate Makefile diagram | [makefile2dot.py](makefile2dot.py), [Makefile](Makefile) |
|Data copied from /usr/share/dict/words and used for this analysis | [words.txt](words.txt)| 

Elements added/ changed:
- Renamed length of word "histogram" filenames from the original [repository](https://github.com/STAT545-UBC/make-activity) to reflect content (e.g. to "length_histogram.png", etc.) and changed dependencies and links accordingly in the [Makefile](Makefile) and [R markdown](report_length.md) files.
- Created R script ([starting_letter.R](starting_letter.R)) to make a barplot on starting letters of words, and created separate report using [report_start.md](report_start.md) and text based on Jenny Bryan's [example](report_length.md).
- Changed appearance of plots generated in the [Makefile](Makefile).
- Added more phony targets in the Makefile. Now you can run `make lengths` and `make starts`, referring to the two types of analyses in this workflow, in addition to `make clean` and `make all`.
- Used code from [https://github.com/vak/makefile2dot](makefile2dot.py), using Python and graphviz, to generate a [graph of the Makefile](diagram.png).
