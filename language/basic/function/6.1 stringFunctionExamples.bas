Let example$ = "Test"
Let number# = 1234

Print "Converts a string to all caps"
Print UCase$(example$)
Print
Print "Converts a string to all lower case"
Print LCase$(example$)
Print
Print "Counts the number of caracters in a string"
Print Len(example$)
Print
Print "Returns spaces of a specified lengh"
Print "space" + Space$(20) + " space"
Print
Input x
Cls
Print "Returns a charcter of a specified length"
Print String$(20, "*")
Print
Print "Converts a number to string"
Print Str$(number#)
Print
Print "Returns the current date"
Print Date$
Print
Print "Returns the current time"
Print Time$
Print
Input x
Cls
example$ = "this is a test"
Print
Print "Searches for a specified string within a string and returns it's position"
Print InStr(1, example$, "test")
Print
Print "Returns chrarters in a string at the specified possition"
Print Mid$(example$, 11, 4)

