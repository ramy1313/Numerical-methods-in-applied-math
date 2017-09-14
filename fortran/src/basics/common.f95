common x,y,z
x=1;y=2;z=3
a=4;b=5
call sub(a,b)
write(*,*) x,y,z,a,b,u
end
subroutine sub(u,v)
    common s,t
    u=v-2
    s=2*u
    v=t
end