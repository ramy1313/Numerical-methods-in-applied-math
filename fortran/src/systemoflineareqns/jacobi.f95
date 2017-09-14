! Jacobi
    Parameter(n=3)
    dimension A(n,n), B(n), X(n)
    eps=1.e-5
    open(1, file='data.txt')
    Do i=1,n
        Read(1,*) (A(i,j), j=1,n)
    ENDDO
    DO i=1,n
        read(1,*) B(i)
    ENDDO
    call jacobi(n,A,B,x,eps)
    write(*,*) x
END
subroutine jacobi(n, A, B, X, eps)
    dimension A(n,n), B(n), X(n), Xold(n)
    xold = 0.0
    Do kounter=1, 50
        DO i=1,n
            S1=0.0
            S2=0.0
            DO j=1,i-1
                s1=s1+A(i,j)*xold(j)
            ENDDO
            DO J=i+1,n
                s2=s2+A(i,j)*xold(j)
            ENDDO
            x(i)=(B(i)-s1-s2)/A(i,i)
        ENDDO
        error = 0.0
        DO i=1,n
            error = error + abs(x(i)-xold(i))
        ENDDO
        IF (error< eps) return
        xold=x
    ENDDO
    write(*,*) 'max number of iteration reached with error = ', error
END