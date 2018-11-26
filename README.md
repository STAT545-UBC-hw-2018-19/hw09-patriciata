# hw09-patriciata: Homework 9
=======

This is the repository for STAT547M Homework 9 by Patricia Angkiriwang. Homework prompt can be found [here](http://stat545.com/Classroom/assignments/hw09/hw09.html). This assignment modifies and builds upon a simple automated R workflow, using the intersection of R and `make`. Original code here: https://github.com/STAT545-UBC/make-activity

Refer to [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io) for further details.

|  Assignment Files  |     |
|-----------|-------------|
|[Makefile]()| |
|[report_start.md]()| |
|[report_length.md]()| |

Elements added/ changed:
- Rename existing "histogram" to reflect content (e.g. "length_histogram", etc.) and changed dependencies and links accordingly.
- Starting letter barplot and create new report
- Change appearance of plots
- New report with combinations of first two letters of words (to analyse most likely 2 letter starting combinations)
- Adding more phony targets: make lengths, make starts, referring to the two types of analyses in this workflow
- Makefile graph (code taken from: https://github.com/vak/makefile2dot)