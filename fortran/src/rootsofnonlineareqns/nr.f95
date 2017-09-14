! Newton-Raphson Method
External f, df
eps = 0.0001
1 write(*,*) 'Enter x0'
Read(*,*) x0
IF(abs(df(x0)) < 1.0e-6) THEN
    write(*,*) 'Bad choice of x0'
    Go to 1
ENDIF
call NR(f,df,x0,x1,eps)
write(*,*) 'the root = ', x1
END
subroutine NR(fun, dfun, x0, x1, eps)
    Maxit = 40
    Do kount=1,Maxit
        x1=x0-fun(x0)/dfun(x0)
        error=abs(x1-x0)
        IF(error< eps) return
        x0 = x1
    ENDDO
    write(*,*) 'Max number of iteration is reached'
    write(*,*) 'Last error = ', error
    Return
END
Function f(x)
    f=exp(x)+x
END
function df(x)
    df=exp(x) + 1
END