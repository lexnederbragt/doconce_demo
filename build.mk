# commands used
%.commands.sh : %.do.txt ${TARGETS}
	touch $*.do.txt && \
	make -n ${TARGETS} > $@ && \
	make ${TARGETS}

# Building up the doconce file by adding successive doconce files
%.do.txt : %.prepare.sh ${DO_FILES}
	source ${BASENAME}.prepare.sh > $@

# html
%.html : %.do.txt
	# Building html
	doconce format html $<

# pdf
%.pdf : %.do.txt
	# Building pdf
	doconce format pdflatex $< --latex_code_style=vrb && \
	pdflatex $*.tex

# jupyter notebook
%.ipynb : %.do.txt
	# Building jupyter notebook
	doconce format ipynb $<

# markdown
%.md : %.do.txt
	# Building markdown
	doconce format markdown $<

# slides
%.slides.html : %.do.txt
	doconce format html $< --html_output=slide1.slides --pygments_html_style=perldoc --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige --skip_inline_comments \
	&& doconce slides_html $*.slides reveal --html_slide_theme=beige
