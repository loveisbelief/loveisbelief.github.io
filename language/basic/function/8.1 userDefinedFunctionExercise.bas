declare function  Pyth!(a!, b!)

Let a! = 0
Let b! = 0
Let c! = 0
Print "Enter the length of side 1"
Input a!
Print "Enter the length of side 2"
Input b!
c! = Pyth!(a!, b!)
Print c!

Function Pyth! (a!, b!)
    Pyth! = Sqr((a * a) + (b * b))
End Function
