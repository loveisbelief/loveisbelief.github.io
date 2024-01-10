Dim num#(5)
Let sum# = 0

num#(1) = 5
num#(2) = 6
num#(3) = 8
num#(4) = 22
num#(5) = 73

For x = 1 To 5
    Print num#(x)
    sum# = sum# + num#(x)
Next x

Print
Print "The Sum of the numbers is:"
Print sum#


