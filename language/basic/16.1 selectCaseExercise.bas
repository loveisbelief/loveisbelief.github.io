Let answer$ = ""
Print "Enter a type of animal"
Input answer$

answer$ = LCase$(answer$)

Select Case answer$
    Case "dog"
        Print "Bark!"
    Case "cat"
        Print "Meow!"
    Case "cow"
        Print "Moo!"
    Case Else
        Print "You animal is not recognized"
End Select


