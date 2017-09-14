x=2; y=8
call means(x,y,am,gm)
write(*,*) am,gm
end
subroutine means(x,y,am,gm)
    am=(x+y)/2
    gm=sqrt(x*y)
    return
end