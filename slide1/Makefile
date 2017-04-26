BASENAME   := slide1
EXTENSIONS := .html .pdf .ipynb .md .slides.html
TARGETS     := $(addprefix ${BASENAME}, ${EXTENSIONS} )

all : ${TARGETS}

# html
%.html : %.do.txt
	doconce format html $<

# pdf
%.pdf : %.do.txt
	doconce format pdflatex $< --latex_code_style=vrb && \
	pdflatex $*.tex

# jupyter notebook
%.ipynb : %.do.txt
	doconce format ipynb $<

# markdown
%.md : %.do.txt
	doconce format markdown $<

# slides
%.slides.html : %.do.txt
		doconce format html $< --html_output=slide1.slides --pygments_html_style=perldoc --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige --skip_inline_comments \
		&& doconce slides_html $*.slides reveal --html_slide_theme=beige


# remove targets - use with care
clean :
	rm ${TARGETS}
