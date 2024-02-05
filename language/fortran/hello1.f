! 所有Fortran程序都以关键字program开头，以关键字end program,后跟end program,名称。
! implicit none语句允许编译器检查是否正确声明了所有变量类型。 您必须始终在每个程序的开头使用implicit none 。
! Fortran中的注释以感叹号（!）开头，因为编译器会忽略此后的所有字符（字符串除外）。
! print *命令在屏幕上显示数据。
! 压缩代码行是保持程序可读性的好方法。
! Fortran允许使用大写和小写字母。 除字符串文字外，Fortran不区分大小写。

        program program_name
        	! 关闭隐式类型
            implicit none      
            ! type declaration statements      
            ! executable statements  
            print *,"Hello,howhow's World!"
            read(*,*)
        end program program_name
