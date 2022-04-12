#include <stdio.h>

__global__ void VecAdd(int n, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (1 * n) vector
     *   where B is a (1 * n) vector
     *   where C is a (1 * n) vector
     *
     ********************************************************************/
     
    /*************************************************************************/
    // INSERT CODE HERE
	
	int i =  threadIdx.x + blockDim.x * blockIdx.x;
	if(i < n)C[i] = A[i] + B[i];



    /*************************************************************************/
	 
}

void basicVecAdd( float *A,  float *B, float *C, int n)
{

    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = 256; 

    /*************************************************************************/
    // INSERT CODE HERE
	dim3 dim_grid((n-1)/BLOCK_SIZE + 1,1,1);
	dim3 dim_block(BLOCK_SIZE,1,1);
	VecAdd<<<dim_grid, dim_block>>>(n,A,B,C);
    	
    /*************************************************************************/
}

