Dim word$(50)
Let arrayNum# = 1
Let answer$ = "Y"
Let ctr# = 0

While answer$ = "Y"
    Print "Enter a name"
    Input word$(arrayNum#)
    arrayNum# = arrayNum# + 1
    ctr# = ctr# + 1
    Print "Would you like to enter another name?"
    Input answer$
    answer$ = UCase$(answer$)
Wend
Print
Print "You entered the following names:"
arrayNum# = 0
For arrayNum# = 1 To ctr#
    Print word$(arrayNum#)
Next arrayNum#

