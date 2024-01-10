
'To create Boolean data types for your program
' declare a contstant for True and a constant of False
' at the beginning.
Const True = 1
Const False = 0

Let answer$ = ""
Let isDogPerson = False

Print "Do you like dogs? [Y / N]"
Input answer$

If answer$ = "y"or answer$="Y" Then
    isDogPerson = True
End If

If isDogPerson = True Then
    Print "Dogs are great!"
Else
    Print "You should give dogs another try!"
End If

print
print "press any key to exit"
input a