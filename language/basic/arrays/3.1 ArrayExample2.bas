Dim num!(100)
Let arrayNum# = 1
Let answer$ = "Y"
Let sum! = 0

While answer$ = "Y"
    Print "Enter a number"
    Input num!(arrayNum#)
    arrayNum# = arrayNum# + 1
    Print "Would you like to enter another number?"
    Input answer$
    answer$ = UCase$(answer$)
Wend

arrayNum# = 0
For arrayNum# = 1 To 100
    sum! = sum! + num!(arrayNum#)
Next arrayNum#

Print "The sum is : "; sum!



