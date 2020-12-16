# Building html
doconce format html slide1.do.txt

# Building pdf
doconce format pdflatex slide1.do.txt --latex_code_style=vrb --execute && \
	pdflatex slide1.tex

# Building jupyter notebook
doconce format ipynb slide1.do.txt --execute

# Building markdown
doconce format markdown slide1.do.txt

# Building reveal.js slides
doconce format html slide1.do.txt --html_output=slide1.reveal --pygments_html_style=perldoc --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige --skip_inline_comments \
	&& doconce slides_html slide1.reveal reveal --html_slide_theme=beige

# Building deck.js slides
doconce format html slide1.do.txt --html_output=slide1.deck --pygments_html_style=autumn --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=swiss --skip_inline_comments \
	&& doconce slides_html slide1.deck deck --html_slide_theme=swiss

# Building PDF of reveal.js slides
deck2pdf --profile=revealjs slide1.reveal.html slide1.reveal.pdf

# Building PDF of deck.js slides
deck2pdf  --profile=deckjs slide1.deck.html slide1.deck.pdf
