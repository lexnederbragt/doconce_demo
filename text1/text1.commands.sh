# Building html
doconce format html text1.do.txt

# Building pdf
doconce format pdflatex text1.do.txt --latex_code_style=vrb && \
	pdflatex text1.tex

# Building jupyter notebook
doconce format ipynb text1.do.txt

# Building markdown
doconce format markdown text1.do.txt
