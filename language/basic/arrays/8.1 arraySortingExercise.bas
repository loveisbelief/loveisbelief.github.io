Dim word$(5)

word$(1) = "Dexter"
word$(2) = "Lilly"
word$(3) = "Toby"
word$(4) = "Happy"
word$(5) = "Lonesome"

Print "Here are the unalphabetized names:"
For x = 1 To 5
    Print word$(x)
Next x

For x1 = 1 To 5
    For x2 = x1 + 1 To 5
        If word$(x1) > word$(x2) Then
            Swap word$(x1), word$(x2)
        End If
    Next x2
Next x1

Print
Print "Here are the alphabetized names:"
For x = 1 To 5
    Print word$(x)
Next x

