## Exercise 1: Use a function to see what type of data the following values are. Found out how to add "b" and "d".

a = 'int'       ## String
b = 7           ## Integer
c = False       ## Boolean
d = "18.5"      ## String

print(type(a))  ## Returns: <class 'str'>
print(type(b))  ## Returns: <class 'int'>
print(type(c))  ## Returns: <class 'bool'> 
print(type(d))  ## Returns: <class 'str'>

## Add "b" and "d". When done initially it gives an error message, as "d" is originally a string value, which is not numeric.
## Changing the value to 18.5 without the "" allows the two values to be added and stored as a float.

d = 18.5        ## Changing "18.5" to 18.5 , so it becomes a floating numeric
x = b + d       ## Adding a variable that is the sum of "b" and "d"

print(x)