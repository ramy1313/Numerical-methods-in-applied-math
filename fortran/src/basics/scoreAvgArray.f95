! 1- Read the marks of 20 students from a file called "scores.txt"
! 2- Find the average "mathematical mean" of the scores
! 3- Write the average on the screen
!  array implementation
    REAL x(20)
    open(1, File='scores.txt')
    sum=0.0

    DO I=1,20
        Read(1,*) x(I)
        sum=sum + x(I)
    ENDDO
    Average = sum /20
    write(*,*) 'Average= ', average
END