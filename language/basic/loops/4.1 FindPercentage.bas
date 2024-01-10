Let totalPoints! = 0
Let pointsCorrect! = 0
Let percentage! = 0
Let answer$ = "Y"
Let repeat# = 0


Print "Input the total points possible"
Input totalPoints!
If totalPoints! < 1 Then
    Print "Total points possible must be greater than 1"
    End
End If
While answer$ = "Y"
    repeat# = 0
    Print "The total points possible is " + Str$(totalPoints!)
    Print "Input the number of points correct"
    Input pointsCorrect!
    If pointsCorrect! < 0 Then
        Print "The number of points correct must be greater than 0"
        End
    ElseIf pointsCorrect! > totalPoints! Then
        Print "The number of points correct cannot be greater than the total points."
        End
    End If

    percentage! = (pointsCorrect! / totalPoints!) * 100

    Print "The percentage is:"
    Print Str$(percentage!) + "%"
    Print
    Print "Would you like to enter another grade? [Y / N]"
    While repeat# = 0
        Input answer$
        answer$ = UCase$(answer$)
        If (answer$ <> "Y") And (answer$ <> "N") Then
            Print "You entered " + answer$
            Print "Please enter Y or N"
            repeat# = 0
        Else
            repeat# = 1
        End If
    Wend
Wend

print "press enter key to continue..."
input a
end