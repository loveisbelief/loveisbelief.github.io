Const TRUE = 1
Const FALSE = 0

Dim array1#(5)
Let search# = 0
Let isInArray# = FALSE

array1#(1) = 9
array1#(2) = 2
array1#(3) = 90
array1#(4) = 65
array1#(5) = 4

Print "Enter a number you would like to check for"
Input search#

For x = 1 To 5
    If array1#(x) = search# Then
        isInArray# = TRUE
    End If
Next x

If isInArray# = TRUE Then
    Print "Your number was found"
Else
    Print "Your number was NOT found"
End If


