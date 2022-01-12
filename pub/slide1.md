% Minimal slide demo
% **Lex Nederbragt**
% Jan 12, 2022

<!-- !split -->

### Plain text

Here is some plain text.

Now we add some python code with output:


~~~{.Python}
total = 0
for number in range(10):
   total = total + (number + 1)
print(total)
~~~

Let us check the type:

~~~{.Python}
print(type(total))
~~~

<!-- !bnotes -->
These are speaker notes. They should appear by pressing `s` or `n`
<!-- !enotes -->

<!-- !split -->

### Explanation

Let's explain some of this code
(setting the code to be unexecutable):

The `for` loop:


~~~{.Python}
for number in range(10):
   total = total + (number + 1)
~~~

Goes through numbers 0 to 9 and adds 1 more than each number to the `total` variable.

<!-- !split -->
### Table

The data on exponential growth can be found in the table below.


time    count    
----  ---------  
 60     10000    
 90     25587    
120     76327    
150     212715   
180     619511   
210    1940838   
240    4240760   
270    13993730  
300    38971086  
330   105614040  


<!-- !split -->
### Figure

An illustration that explains the Python dictionary concept.

<!-- <img src="img/PythonDict.png" width="400" alt="Schematic illustration of how keys and values are related in Python dictionaries"> -->
![](img/PythonDict.png)

The figure was taken
[from Wikimedia Commons](https://commons.wikimedia.org/wiki/File:GooglePythonClass_Day1_Part3_Pic.jpg).
<!-- !split -->

### Math

Now we add some mathematical formula:

$$

K_n = rwTK_{n-1}\left (1 - \frac{K_{n-1}}{H}\right ) - K_{n-1}.

$$
<!-- !split -->
### Slidecells

Here we use a two by two grid for content

<!-- !bslidecell 00 -->
Top left cell
<!-- !eslidecell -->

<!-- !bslidecell 01 -->
Top right cell
<!-- !eslidecell -->

<!-- !bslidecell 10 -->
Bottom left cell
<!-- !eslidecell -->

<!-- !bslidecell 11 -->
Bottom right cell
<!-- !eslidecell -->

