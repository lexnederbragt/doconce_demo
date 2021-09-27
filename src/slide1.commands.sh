# This file is generated by make, do not edit

# Building html
# Target: ../pub/slide1.html
doconce format html slide1.do.txt --execute=abort && \
	mv slide1.html ../pub/slide1.html

# Building pdf
# Target: ../pub/slide1.pdf
doconce format pdflatex slide1.do.txt --latex_code_style=vrb --execute=abort && \
	pdflatex slide1.tex && \
	mv slide1.pdf ../pub/slide1.pdf

# Building jupyter notebook
# Target: ../pub/slide1.ipynb
doconce format ipynb slide1.do.txt --execute=abort && \
	mv slide1.ipynb ../pub/slide1.ipynb

# Building markdown
# Target: ../pub/slide1.md
doconce format markdown slide1.do.txt && \
	mv slide1.md ../pub/slide1.md

# Building deck.js slides
# Target: ../pub/slide1.deck.html
doconce format html slide1.do.txt --html_output=slide1.deck --pygments_html_style=autumn \
	--keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=swiss \
	--skip_inline_comments --execute=abort \
	&& doconce slides_html slide1.deck deck --html_slide_theme=swiss && \
	mv slide1.deck.html ../pub/slide1.deck.html && \
	rsync -a deck.js-latest ../pub/ && rm -r deck.js-latest

# Building reveal.js slides
# Target: ../pub/slide1.reveal.html
doconce format html slide1.do.txt --html_output=slide1.reveal --pygments_html_style=perldoc \
	    --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige \
		--skip_inline_comments --execute=abort \
	&& doconce slides_html slide1.reveal reveal --html_slide_theme=beige && \
	mv slide1.reveal.html ../pub/slide1.reveal.html && \
	rsync -a reveal.js ../pub/ && rm -r reveal.js

# Building PDF of deck.js slides
# Target: ../pub/slide1.deck.pdf
deck2pdf  --profile=deckjs ../pub/slide1.deck.html ../pub/slide1.deck.pdf

# Building PDF of reveal.js slides
# Target: ../pub/slide1.reveal.pdf
deck2pdf --profile=revealjs ../pub/slide1.reveal.html ../pub/slide1.reveal.pdf
