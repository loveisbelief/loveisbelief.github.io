Let num1! = 0
Let num2! = 0

Print "input a number greater than 0"
Input num1!
Print "Input another number greater than 0"
Input num2!

If (num1! > 100) Or (num2! > 100) Then
    Print "One or both of your numbers are greater than 100!"
End If

If (num1! > 100) And (num2! > 100) Then
    Print "Both your numbers are larger than 100!"
End If

If (num1 > 100) Xor (num2! > 100) Then
    Print "Only one of your numbers is greater than 100"
End If

If (Not (num1! > 100)) And (Not (num2! > 100)) Then
    Print "Neither of your numbers were larger than 100"
End If

