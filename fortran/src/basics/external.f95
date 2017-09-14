external f,g
call sub(f,1,valf)
call sub(g,1,valg)
write(*,*) valf,valg
END
subroutine sub(Fun, I, val)
    val = I+5+fun(I)
End
function f(I)
    f=I+3
END
function g(I)
    g=I-1
END