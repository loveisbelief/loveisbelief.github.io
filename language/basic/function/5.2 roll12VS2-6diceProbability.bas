Let dice1# = 1
Let dice2# = 1
Let dice12# = 1
Let result# = 1
Let answer! = 0
Dim storage(12)
Dim storage12(12)

Print "Enter the number of times you would like to roll two dice"
Input answer!

While 0 < answer!
    dice1# = Int(Rnd * 6) + 1
    dice2# = Int(Rnd * 6) + 1
    dice12# = Int(Rnd * 12) + 1
    result# = dice1# + dice2#
    Print result#, dice12#
    Select Case result#
        Case 2
            storage(result#) = storage(result#) + 1
        Case 3
            storage(result#) = storage(result#) + 1
        Case 4
            storage(result#) = storage(result#) + 1
        Case 5
            storage(result#) = storage(result#) + 1
        Case 6
            storage(result#) = storage(result#) + 1
        Case 7
            storage(result#) = storage(result#) + 1
        Case 8
            storage(result#) = storage(result#) + 1
        Case 9
            storage(result#) = storage(result#) + 1
        Case 10
            storage(result#) = storage(result#) + 1
        Case 11
            storage(result#) = storage(result#) + 1
        Case 12
            storage(result#) = storage(result#) + 1
    End Select
    Select Case dice12#
        Case 2
            storage12(dice12#) = storage12(dice12#) + 1
        Case 3
            storage12(dice12#) = storage12(dice12#) + 1
        Case 4
            storage12(dice12#) = storage12(dice12#) + 1
        Case 5
            storage12(dice12#) = storage12(dice12#) + 1
        Case 6
            storage12(dice12#) = storage12(dice12#) + 1
        Case 7
            storage12(dice12#) = storage12(dice12#) + 1
        Case 8
            storage12(dice12#) = storage12(dice12#) + 1
        Case 9
            storage12(dice12#) = storage12(dice12#) + 1
        Case 10
            storage12(dice12#) = storage12(dice12#) + 1
        Case 11
            storage12(dice12#) = storage12(dice12#) + 1
        Case 12
            storage12(dice12#) = storage12(dice12#) + 1
    End Select

    answer! = answer! - 1
Wend
Cls
Print "Results:"
Print "Roll Result", "Two 6 sided dice:", "One 12 sided dice"
For x = 2 To 12
    Print x, storage(x), , storage12(x)
Next x
