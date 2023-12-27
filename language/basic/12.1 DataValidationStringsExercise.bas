Let startProg$ = ""
Print "Do you want to start the program? [Y / N]"
Input startProg$

startProg$ = UCase$(startProg$)

If startProg$ = "N" Then
    Print "Exiting...."
    End
ElseIf startProg$ = "Y" Then
    Print "The program is starting...."
Else
    Print "Please enter Y to start the program or N to exit"
End If


