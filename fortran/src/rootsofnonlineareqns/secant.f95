! Secant Method
External f
eps = 1.e-5
1 write(*,*) 'enter x0,x1'
read(*,*) x0,x1
IF(f(x1) - f(x0) < eps) THEN
    goto 1
    ELSE
    call secant(x0, x1, f, eps, x2)
    write(*,*) 'Root = ', x2
ENDIF
END
subroutine secant(x0, x1, f, eps, x2)
    Do kounter=1,20
        x2 = x1 - (x1-x0)*f(x1)/(f(x1)-F(x0))
        error=abs(x2-x1)
        if(error < eps) Return
        x0 = x1
        x1 = x2
    ENDDO
    write(*,*) 'No convergance and error= ', error
    return
end
Function f(x)
    f= x - exp(-3*x)
end