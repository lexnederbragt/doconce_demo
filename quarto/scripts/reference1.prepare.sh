# Building up the quarto file by adding successive doconce files
cat qmd_files/reference1.yml
echo
echo "## Plain text"
echo
cat qmd_files/cite1.qmd
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
cat qmd_files/figure2_cite.qmd
echo
echo "## Math"
echo
cat qmd_files/math1.qmd
echo
echo "## Plotting with Python"
echo
cat qmd_files/pyplot.qmd
echo
echo "## References"
echo
echo "::: {#refs}"
echo ":::"
