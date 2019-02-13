MPICC = mpicc
FLAGS = -Wall
THREADS=4
SIZE=900
STEPS=10000
STEP=20
SOURCE = mpi_heat2D_opt.c
BINS = heat2d
all: heat2d

heat2d: $(SOURCE)
	$(MPICC) $(FLAGS) -o heat2d $(SOURCE) -lm

clean:
	rm -f $(BINS)
