Const TRUE = 1
Const FALSE = 0

Dim array1$(5)
Let search$ = ""
Let isInArray# = FALSE

array1$(1) = "Dexter"
array1$(2) = "Lilly"
array1$(3) = "Toby"
array1$(4) = "Happy"
array1$(5) = "Lonesome"

Print "Enter a name  you would like to check for"
Input search$
search$ = UCase$(search$)
For x = 1 To 5
    If UCase$(array1$(x)) = search$ Then
        isInArray# = TRUE
    End If
Next x

If isInArray# = TRUE Then
    Print "Your name was found"
Else
    Print "Your name was NOT found"
End If


