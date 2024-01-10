Let totalPoints! = 0
Let pointsCorrect! = 0
Let percentage! = 0

Print "Input the total points possible"
Input totalPoints!
If totalPoints! < 1 Then
    Print "Total points possible must be greater than 1"
    End
End If

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

print
print "press any key to exit"
input a
end


