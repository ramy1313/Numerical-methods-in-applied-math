! Trapzoidal Rule
    External f
    a=0;b=1;eps=0.0001
    call trap(f,a,b,eps,val)
    write(*,*) val
END
Function f(x)
    f=x*x
END
subroutine trap(f,a,b,eps,val)
    N=16; Maxit = 20
    sum0=(f(a) + f(b))/2.0
    do kount=1, maxit
        h=(b-a)/n
        sum=0
        do i=1,n-1
            XI = a + i *h
            sum = sum + f(xi)
        ENDDO
        val = h * (sum0 + sum)
        If(kount > 1) then
            error = abs(val-oldval)
            if(error<eps) return
        ENDIF
        oldval=val
        N=2*N
    ENDDO
    write(*,*) 'max number of iterations is reached'
    write(*,*) 'last error = ', error
END