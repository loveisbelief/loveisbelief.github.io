Let answer# = 0
Print "Enter the amount of times you would like to say goodby"
Input answer#
'saves the answer variable permanently into answerHolder so it can be reused
answerHolder# = answer#

Do While answer# > 0
    Print "Goodby"
    answer# = answer# - 1
Loop
Print
'resets the answer variable so this example program will work
answer# = answerHolder#

Do
    Print "Goodby"
    answer# = answer# - 1
Loop While answer# > 0


Print
'resets the answer variable so this example program will work
answer# = answerHolder#

Do Until answer# = 0
    Print "Goodby"
    answer# = answer# - 1
Loop

'resets the answer variable so this example program will work
answer# = answerHolder#
Print

Do
    Print "Goodby"
    answer# = answer# - 1
Loop Until answer# = 0

