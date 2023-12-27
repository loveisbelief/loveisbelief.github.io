Let answer$ = ""
Print "Enter your favorite animal"
Input answer$

answer$ = LCase$(answer$)

If answer$ = "dog" Then
    Print "Dogs are best!"
Else
    Print "You should get a dog instead."
End If

Print "Your answer in lowercase is " + answer$
Print "Your answer in uppercase is " + UCase$(answer$)


