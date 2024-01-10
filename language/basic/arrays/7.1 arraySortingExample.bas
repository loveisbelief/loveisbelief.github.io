Dim numbers#(5)

numbers#(1) = 67
numbers#(2) = 54
numbers#(3) = 2
numbers#(4) = 74532
numbers#(5) = 6

Print "Here are the unsorted numbers:"
For x = 1 To 5
    Print numbers#(x)
Next x

For x1 = 1 To 5
    For x2 = x1 + 1 To 5
        If numbers#(x1) > numbers#(x2) Then
            Swap numbers#(x1), numbers#(x2)
        End If
    Next x2
Next x1

Print
Print "Here are the sorted numbers:"
For x = 1 To 5
    Print numbers#(x)
Next x

