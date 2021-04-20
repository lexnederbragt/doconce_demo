<!-- Building up the output by adding successive doconce files -->

### Plain text

Here is some plain text.

Now we add some python code with output:


~~~{.Python}
total = 0
for number in range(10):
   total = total + (number + 1)
print(total)
~~~

And some data


~~~
time,count
60,10000
90,25587
120,76327
150,212715
180,619511
210,1940838
240,4240760
270,13993730
300,38971086
330,105614040
~~~

### Explanation

Let's explain some of this code
(setting the code to be unexecutable):

The `for` loop:


~~~{.Python}
for number in range(10):
   total = total + (number + 1)
~~~

Goes through numbers 0 to 9 and adds 1 more than each number to the `total` variable.

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


### Figure

See [figure](#PythonDict) for an illustration that explains the python dictionary concept.

<!-- <img src="img/PythonDict.jpg" width=400><p><em>Data structure concept of a dictionary in python. <div id="PythonDict"></div></em></p> -->
![<p><em>Data structure concept of a dictionary in python. <div id="PythonDict"></div></em></p>](img/PythonDict.jpg)

The figure was taken
[from Wikimedia Commons](https://commons.wikimedia.org/wiki/File:GooglePythonClass_Day1_Part3_Pic.jpg).

### Math

Now we add some mathematical formula:

$$

K_n = rwTK_{n-1}\left (1 - \frac{K_{n-1}}{H}\right ) - K_{n-1}.

$$

