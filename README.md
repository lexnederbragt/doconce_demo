# doconce demos

To demonstrate [doconce](http://hplgit.github.io/doconce/doc/pub/manual/manual.html) functionality.

Note that on <https://lexnederbragt.github.io/doconce_demo/>, the markdown version will be rendered as html.

Also check out the files as rendered [on github](https://github.com/lexnederbragt/doconce_demo).

* `doconce` links to the doconce file used to create the different output formats
* `commands` lists the unix commands used to convert the `doconce`

Requires doconce and LaTex to PDF conversion software, as well as [deck2pdf](https://github.com/melix/deck2pdf).

Note that *only* the files `.prepare.sh` and `Makefile` are needed to run `make` in a folder.
Any edits to doconce files must be done in the `do_files` folder.

# Text

Demonstrates a text with python code, a table and a figure and some math converted to different formats.

|Subject|doconce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Text|[doconce](text1/text1.do.txt)|[commands](text1/text1.commands.sh)|[html](text1/text1.html)|[pdf](text1/text1.pdf)|[ipynb](text1/text1.ipynb)|[markdown](text1/text1.md)|

# Slides

Demonstrates slides with python code, a table and a figure and some math converted to different formats, including `reveal.js` and `deck.js` slide sets.

Slides:  

|Type  |html|pdf|
|------|----|---|
|reveal|[html](slide1/slide1.reveal.html)|[pdf](slide1/slide1.reveal.pdf)|
|deck  |[html](slide1/slide1.deck.html)|[pdf](slide1/slide1.deck.pdf)

|Subject|doconce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Slides|[doconce](slide1/slide1.do.txt)|[commands](slide1/slide1.commands.sh)|[html](slide1/slide1.html)|[pdf](slide1/slide1.pdf)|[ipynb](slide1/slide1.ipynb)|[markdown](slide1/slide1.md)|


# *Include* functionality

Demonstrates how to include other doconce files and code from a file. Note how the `doconce` file contains only links to other `doconce` files, yet still results in the same outputs as for the **Text** example. If you dig deeper, this example also demonstrates the option of including external python code and comma-separated data files into a doconce file. For details, check [this explanation](include1/index.md).


|Subject|doconce|commands|html|pdf|ipynb|markdown|
|-------|-------|--------|----|---|-----|--------|
|Include|[doconce](include1/include1.do.txt)|[commands](include1/include1.commands.sh)|[html](include1/include1.html)|[pdf](include1/include1.pdf)|[ipynb](include1/include1.ipynb)|[markdown](include1/include1.md)|

-----
## Behind the scene

Some documents in this repository are generated automatically, under the control of a `Makefile` in each folder, making for a flexible, modular setup:

* each folder has a script to build the `doconce` file out of individual smaller `doconce` files in the `do_files` folder
* the `Makefile`, using instructions in the `build.mk` file, is used to generate all the outputs
* the `Makefile` also generates the `commands.sh` file listing the commands used to generate all output
* in principle, one could execute this `commands.sh` to (re)create all outputs
