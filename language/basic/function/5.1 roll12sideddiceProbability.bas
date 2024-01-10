Let dice1# = 1
Let dice2# = 2
Let result# = 1
Let answer! = 0
Dim storage(12)

Print "Enter the number of times you would like to roll a 12 sided dice"
Input answer!

While 0 < answer!
    dice1# = Int(Rnd * 12) + 1
    result# = dice1#
    Print dice1#, result#
    Cls
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
    answer! = answer! - 1
Wend

Print "Results:"
For x = 2 To 12
    Print "Number "; x; " was rolled "; storage(x); "times"
Next x
