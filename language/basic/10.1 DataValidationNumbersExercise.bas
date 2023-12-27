Let age# = 0
Print "Enter your age"
Input age#

If age# < 0 Then
    Print "Please enter a valid age"
ElseIf age# > 120 Then
    Print "Please enter a valid age"
Else
    Print "Your age of " + Str$(age#) + " has been recorded."
End If

