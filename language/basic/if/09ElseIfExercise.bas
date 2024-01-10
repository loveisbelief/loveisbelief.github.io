Let answer# = 0
Print "Guess a number between 1 and 10"
Input answer#

If answer# = 4 Then
    Print "You got it!"
ElseIf answer# < 2 Then
    Print "Your guess was way too low"
ElseIf answer# < 4 Then
    Print "Your guess was too low"
ElseIf answer# > 7 Then
    Print "Your guess was way too high"
ElseIf answer# > 4 Then
    Print "Your guess was too high"
End If

print
print "press any key to exit"
input a