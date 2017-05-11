# Building html
doconce format html slide1.do.txt

# Building pdf
doconce format pdflatex slide1.do.txt --latex_code_style=vrb && \
	pdflatex slide1.tex

# Building jupyter notebook
doconce format ipynb slide1.do.txt

# Building markdown
doconce format markdown slide1.do.txt

# Building slides
doconce format html slide1.do.txt --html_output=slide1.slides --pygments_html_style=perldoc --keep_pygments_html_bg SLIDE_TYPE=reveal SLIDE_THEME=beige --skip_inline_comments \
	&& doconce slides_html slide1.slides reveal --html_slide_theme=beige
