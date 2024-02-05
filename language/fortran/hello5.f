! 尝试以下示例来了解Fortran中可用的所有算术运算符 -

        program arithmeticOp
            ! this program performs arithmetic calculation
            implicit none  
            ! variable declaration
            integer :: a, b, c
            ! assigning values 
            a = 5   
            b = 3  
            ! Exponentiation 
            c = a ** b 
            ! output 
            print *, "c = ", c
            ! Multiplication  
            c = a * b 
            ! output 
            print *, "c = ", c
            ! Division  
            c = a/b 
            ! output 
            print *, "c = ", c
            ! Addition
            c = a + b 
            ! output 
            print *, "c = ", c
            ! Subtraction 
            c = a - b 
            ! output 
            print *, "c = ", c
        end program arithmeticOp
