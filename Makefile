# Example Makefile. Before compile,
#load m odule of mpich or openmpi. This Makefile uses the commands of mpich
#available modules listed by command "module avail"
CC = mpicc
CLINKER = mpicc
F77 = mpif77
CFLAGS = -O3
FFLAGS = -O3
MATH_LIB = -lm

summa: summa.c
	$(CLINKER) -o summa summa.c $(MATH_LIB)
.c.o:
	$(CC) $(CFLAGS) -c $<
.f.o:
	$(F77) $(FFLAGS) -c $<
clean:
	rm -f *.o summa

