! 1- Read the elements of two matrices A,B of size 2*3 from a file mat.txt
! 2- Add A & B to form a matrix C
! 3- Write the elements of C on the screen row by row
    DIMENSION A(2,3), B(2,3), C(2,3)
    n=2;m=3
    open(1, File='mat.txt')
    ! DO I=1,n
      !  DO J=1,m
       !     Read(1,*) A(I,J)
        !ENDDO
    !ENDDO
    DO I=1,n
        Read(1,*)(A(I,J), J=1,M) ! Implicit loop
    ENDDO
    DO I=1,n
        Read(1,*)(B(I,J), J=1,M) ! Implicit loop
    ENDDO
    close(1)
    DO I=1,n
        DO J=1,M
            C(I,J) = A(I,J) + B(I,J)
        ENDDO
    ENDDO
    DO I=1,n
        write(*,9)(c(i,j), J=1,m)
    ENDDO
    9 format(2x,F5.1)
END
