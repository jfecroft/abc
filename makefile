FFLAGS = -fno-sign-zero

abc : lin.o abc.o pot.o fun.o
	gfortran  abc.o fun.o lin.o pot.o -o abc.x -lblas -llapack
lin.o : lin.f
	gfortran -c $(FFLAGS) lin.f
pot.o : pot.f
	gfortran -c $(FFLAGS) pot.f
fun.o : fun.f 
	gfortran -c $(FFLAGS) fun.f
abc.o : abc.f 
	gfortran -c $(FFLAGS) abc.f
clean:
	    rm *.o 
