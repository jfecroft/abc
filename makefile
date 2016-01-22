FFLAGS = -fno-sign-zero

abc : lin.o abc.o pot.o fun.o
	gfortran  abc.o fun.o lin.o pot.o -o abc.x -lblas -llapack
lin.o : 
	gfortran -c $(FFLAGS) lin.f
pot.o : 
	gfortran -c $(FFLAGS) pot.f
fun.o : 
	gfortran -c $(FFLAGS) fun.f
abc.o : 
	gfortran -c $(FFLAGS) abc.f
clean:
	    rm *.o 
