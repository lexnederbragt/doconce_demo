# Building up the quarto file by adding successive doconce files
cat qmd_files/text1.yml
echo
echo "## Plain text"
echo
cat qmd_files/code1.qmd
echo
echo "## Explanation"
echo
cat qmd_files/explain1.qmd
echo
echo "## Table"
echo
cat qmd_files/table1.qmd
echo
echo "## Figure"
echo
cat qmd_files/figure1.qmd
echo
echo "## Math"
echo
cat qmd_files/math1.qmd
