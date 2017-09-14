I= 7; X=3.15; y=-3.205
write(*,*) I,x,y
write(*,9) I,x,y
write(*,19) I,x,y
write(*,29) I,x,y

9 Format(2x,I3,2x,F4.2,3x,F8.4)
19 Format(2x, I2,2x,F5.1,3x,F4.1)
29 Format(2x,I1,2x,F3.1,3x,F2.1)

x= -17.51
write(*,11) x
11 Format(2x,"The value of x= ",F8.2)
END