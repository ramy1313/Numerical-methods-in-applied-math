! Simpson Rule
    External f
    a=0.0;b=1.0;eps=1.e-5
    call simpson(f, a,b,eps,val)
    write(*,*) 'The val of the integral = ', val
END
subroutine simpson(f, a, b, eps, val)
    so = f(a) + f(b)
    n =4
    DO Kounter=1, 50
        h=(b-a)/n
        s1=0.0; s2=0.0
        DO i=1,n-1,2
            s1=s1+f(a+i*h)
        ENDDO
        DO i=2,n-2,2
            s2=s2+f(a+i*h)
        ENDDO
        val = h * (so + 4 * s1 + 2 * s2)/3.0
        if(Kounter > 1) then
                error = abs(val -oldval)
                if (error < eps) return
        ENDIF
        oldval = val
        n=2*n
    ENDDO
    write(*,*) 'No converge and error = ', error
    return
END
Function f(x)
    f= alog(x+1)/(x+4.0)/(tan(x) +5)
END