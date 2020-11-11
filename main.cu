#include <mpi.h>
__global__ void printHelloGPU()
{
	printf("Hello x: #%d  y: #%d\n", threadIdx.x, threadIdx.y);
}        
int main(int argc, char *argv[]) {
    int rank,size;
    MPI_Init(&argc,&argv);
    MPI_Comm_rank(MPI_COMM_WORLD,&rank);
    MPI_Comm_size(MPI_COMM_WORLD,&size);
	dim3 threads(3, 3);
	printHelloGPU<<<1, threads>>>();
	cudaDeviceSynchronize();
    MPI_Finalize();
    return 0;
}

