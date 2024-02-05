        program matmul
        integer n
        parameter (n=100)
        real a(n,n),b(n,n),c(n,n)
c
        do j=1,n
            do i=1,n
                a(i,j)=1.0/(i+j-1)
                b(i,j)=1.0
                c(i,j)=0.0
            enddo
        enddo
c
        do i=1,n
            do j=1,n
                do k=1,n
                    c(i,j)=c(i,j)+a(i,k)*b(k,j)
                enddo
            enddo
        enddo
c
        print *,"c(1,1)=",c(1,1)
        stop
        end
