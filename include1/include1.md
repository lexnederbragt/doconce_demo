<!-- Building up the output by adding successive doconce files -->

### Plain text

Here is some plain text.

Now we add some python code with output:


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{.Python}
total = 0
for number in range(10):
   total = total + (number + 1)
print(total)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
55
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### Explanation

Let's explain some of this code
(setting the code to be unexecutable):

The `for` loop:


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
for number in range(10):
   total = total + (number + 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Goes through numbers 0 to 9 and adds 1 more than each number to the `total` variable.

### Math

Now we add some mathematical formula:

$$

{E_{n}} = E_{n-1} + (1 - E_{n-1}/K)E_{n-1}.

$$

