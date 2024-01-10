Let x# = 0
Let y# = 0

Screen 12

Randomize Timer
For ctr = 1 To 100
    x = Int(Rnd * 479)
    y = Int(Rnd * 639)
    PSet (x, y)
Next ctr
input a