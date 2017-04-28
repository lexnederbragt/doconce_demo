# Building html
doconce format html slide1.do.txt
# Building pdf
doconce format pdflatex slide1.do.txt --latex_code_style=vrb && \
	pdflatex slide1.tex
# Building jupyter notebook
doconce format ipynb slide1.do.txt
# Building markdown
doconce format markdown slide1.do.txt
