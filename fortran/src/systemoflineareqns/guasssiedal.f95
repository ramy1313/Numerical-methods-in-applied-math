! Guass Siedal
    parameter(n=3)
    Dimension A(n,n), B(n), X(n)
    eps=1.e-4
    open(1, file='guass.txt')
    DO i=1,n
        Read(1,*) (A(i,j), j=1,n), B(i)
    ENDDO
    call guasssidal(eps,n,A,X,B)
    write(*,*) X
END
subroutine guasssidal(eps,n,A,x,B)
    Dimension A(n,n), B(n), X(n), Xold(n)
    xold = 0.0
    Do Kounter=1,40
        DO i=1,n
            s1=0.0; s2=0.0
            DO j=1, i-1
                s1=s1+A(i,j)*xold(j)
            ENDDO
            Do j=i+1,n
                s2=s2+A(i,j)*xold(j)
            ENDDO
            if(abs(a(i,i))<eps) then
                write(*,*) 'method fail'
                stop
            ENDIF
            x(i)=(B(i)-s1-s2)/A(i,i)
        ENDDO
        error=0.0
        DO i=1,n
            error = error + abs(x(i) -xold(i))
        ENDDO
        if(error<eps) return
        xold=x
    ENDDO
    write(*,*) 'max no reached & error = ', error
END