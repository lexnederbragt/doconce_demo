# Building html
doconce format html exercise1.do.txt

# Building pdf
doconce format pdflatex exercise1.do.txt --latex_code_style=vrb && \
	pdflatex exercise1.tex

# Building jupyter notebook
doconce format ipynb exercise1.do.txt

# Building markdown
doconce format markdown exercise1.do.txt
