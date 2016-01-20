abc : lin.o abc.o pot.o fun.o
	gfortran abc.o fun.o lin.o pot.o -o abc.x -lblas -llapack
lin.o : 
	gfortran -c lin.f
pot.o : 
	gfortran -c pot.f
fun.o : 
	gfortran -c fun.f
abc.o : 
	gfortran -c abc.f
clean:
	    rm *.o 
