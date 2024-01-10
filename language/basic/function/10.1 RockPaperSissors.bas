

Dim Shared answer$
Dim Shared compAnswer$
Let replay$ = "Y"

While replay$ = "Y"
    Print "Type Rock, Paper, or Scissors"
    Input answer$
    answer$ = UCase$(answer$)
    Call computersChoice
    Call displayChoices
    Call findWinner
    Print
    Print "Would you like to try your luck again? [Y/N]"
    Input replay$
    replay$ = UCase$(replay$)
Wend

Sub findWinner
    If answer$ = "ROCK" Then
        If compAnswer$ = "ROCK" Then
            Print "Tie"
        ElseIf compAnswer$ = "PAPER" Then
            Print "You Loose"
            Call gameOver
        ElseIf compAnswer$ = "SCISSORS" Then
            Print "You win!"
        End If
    ElseIf answer$ = "PAPER" Then
        If compAnswer$ = "ROCK" Then
            Print "You win!"
        ElseIf compAnswer$ = "PAPER" Then
            Print "Tie"
        ElseIf compAnswer$ = "SCISSORS" Then
            Print "You Loose"
            Call gameOver
        End If
    Else
        If compAnswer$ = "ROCK" Then
            Print "You Loose"
            Call gameOver
        ElseIf compAnswer$ = "PAPER" Then
            Print "You win!"
        ElseIf compAnswer$ = "SCISSORS" Then
            Print "Tie"
        End If

    End If
End Sub

Sub displayChoices
    Print "You chose " + answer$ + " the computer chose "; compAnswer$; ""
End Sub

Sub computersChoice
    Let randNum# = 0
    Randomize Timer
    randNum# = Int(Rnd * 3)
    Select Case randNum#
        Case 0
            compAnswer$ = "ROCK"
        Case 1
            compAnswer$ = "PAPER"
        Case 2
            compAnswer$ = "SCISSORS"
    End Select
End Sub


Sub gameOver
    Print String$(50, "*")
    Print String$(50, "-")
    Print String$(19, "#") + " Game Over " + String$(20, "#")
    Print String$(50, "-")
    Print String$(50, "*")
    End
End Sub

