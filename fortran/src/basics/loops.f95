DO I=1,5,2
    j=2*I
    write(*,*) I,J
ENDDO
write(*,*) I,J
DO I=5,9
    J=2*I
    write(*,*) I,J
ENDDO
DO I=1,-1,-1
    J=2*I
    write(*,*) I,J
ENDDO
DO I=1,-1
    J=2*I
    write(*,*) I,J
ENDDO
x=7
IF(x<1) write(*,*) x
IF(x>=5) write(*,*) 2*x
I=5
IF(I==5) then
    j=3; k=I-J
    write(*,*) I,J,K
ENDIF
I=7
IF(I<10) then
    J=5
ELSE
    J=6
ENDIF
write(*,*) J
DO I=1,3
    J=2*I
    IF (J==6) then
        k=3
    ELSE
        k=4
    ENDIF
    write(*,*) I,J,k
ENDDO
DO I=1,2
    DO J=1,3
        K=I+J
        write(*,*)I,J,K
    ENDDO
ENDDO
END