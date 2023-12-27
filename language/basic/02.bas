Const pi = 3.14159
dim diameter as single
dim answer as single
rem Let diameter = 0
rem Let answer = 0
Print "This program finds the circumference of a circle given its diameter."
Print "Enter the diameter of the circle"
Input diameter

answer = pi * diameter

Print "The circumference of a circle with a diameter of " + Str$(diameter) + " is:"
Print answer
