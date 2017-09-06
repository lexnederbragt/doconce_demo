# commands used
# use the '--what-if' option to show
# what would happen if do files was updated
%.commands.sh : %.do.txt ${TARGETS}
	make -n --what-if $< ${TARGETS} | ../scripts/format_commands.sh > $@

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

# reveal.js slides
%.reveal.html : %.do.txt
	# Building reveal.js slides
	doconce format html $< --html_output=$*.reveal --pygments_html_style=perldoc --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige --skip_inline_comments \
	&& doconce slides_html $*.reveal reveal --html_slide_theme=beige

# reveal.js PDF
%.reveal.pdf : %.reveal.html
	# Building PDF of reveal.js slides
	deck2pdf --profile=revealjs $< $@

# deck.js slides
%.deck.html : %.do.txt
	# Building deck.js slides
	doconce format html $< --html_output=$*.deck --pygments_html_style=autumn --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=swiss --skip_inline_comments \
	&& doconce slides_html $*.deck deck --html_slide_theme=swiss

# deck.js PDF
%.deck.pdf : %.deck.html
	# Building PDF of deck.js slides
	deck2pdf  --profile=deckjs $< $@
