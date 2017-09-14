! Bisection Method
    External f
    eps = 0.0001
    write(*,*) 'Enter a,b'
    read(*,*) a,b
    c = (a+b) /2
    IF(abs(f(c)) < 1.e-6) then
        write(*,*) 'Root= ', c
        STOP
    ENDIF
    call Bisection(f, eps, a, b,c)
    write(*,*) 'The root = ', c
END
Function f(x)
    f=x*x-1
END
subroutine bisection(f, eps, a, b, c)
    DO Kount=1, 100
        c=(a+b)/2
        IF(F(a)*f(c) < 0) Then
            b=c
        else
            a=c
        ENDIF
        error=abs(f(c))
        IF(error<eps) RETURN
    ENDDO
    write(*,*) 'No convergance'
    write(*,*) 'Error = ', Error
END