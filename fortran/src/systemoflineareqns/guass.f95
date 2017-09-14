! Guass-elimination method
    parameter(n=3)
    Dimension A(n, n+1), x(n)
    open(1, File='guass.txt')
    DO i=1,n
        Read(1,*) (A(i,J), j =1, n+1)
    ENDDO
    call guass(n, A, X)
    write(*,*) 'the soln is ', X
    DO i=1,n
        write(*,*) X(i)
    ENDDO
END
subroutine guass(n, A, X)
    !elimination
    Dimension A(n, n+1), X(n)
    DO i=1, n-1
        DO j=i+1, n
            DO K=i, n+1
                a(j,k)= a(j,k) - a(J,i) * A(I,k)/A(I,I)
            ENDDO
        ENDDO
    ENDDO
    ! back subsituation
    X(n) = a(n,n+1)/a(n,n)
    DO l=n-1,1,-1
        s=0
        DO k=l+1, n
            s = s + a(l,k)*X(k)
        ENDDO
        x(l)=(a(l,n+1)-s)/a(l,l)
    ENDDO
END
