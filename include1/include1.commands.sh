# Building html
doconce format html include1.do.txt
# Building pdf
doconce format pdflatex include1.do.txt --latex_code_style=vrb && \
	pdflatex include1.tex
# Building jupyter notebook
doconce format ipynb include1.do.txt
# Building markdown
doconce format markdown include1.do.txt
