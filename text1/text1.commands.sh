# This file is generated by make, do not edit

# Building html
doconce format html text1.do.txt --execute

# Building pdf
doconce format pdflatex text1.do.txt --latex_code_style=vrb --execute && \
	pdflatex text1.tex

# Building jupyter notebook
doconce format ipynb text1.do.txt --execute

# Building markdown
doconce format markdown text1.do.txt
