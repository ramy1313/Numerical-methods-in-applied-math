    x=1;y=2
    z=am(x,y)
    u=gm(x,y)
    write(*,*)z,u
END

Function am(a,b)
    am = (a+b)/2
    return
end
function gm(x,y)
    gm=sqrt(x*y)
end