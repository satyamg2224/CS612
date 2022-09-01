#include<stdio.h>
#include<stdlib.h>
#include <time.h>

int main(){
    
    int N;
    scanf("%d", &N);
    int **matrix1, **matrix2, **resultMatrix;
    time_t t, startTime, endTime;

    matrix1 = (int **)malloc(N*sizeof(int*));
    matrix2 = (int **)malloc(N*sizeof(int*));
    resultMatrix = (int **)malloc(N*sizeof(int*));
    srand ( (unsigned) time (&t));

    for(int i = 0; i < N; i++){
        matrix1[i] = (int*)malloc(N*sizeof(int));
        matrix2[i] = (int*)malloc(N*sizeof(int));
        resultMatrix[i] = (int*)malloc(N*sizeof(int));
    }

    for(int i = 0; i < N; i++){
      for(int j = 0; j < N; j++){
            matrix1[i][j] = rand() % 100 + 1;
            matrix2[j][i] = rand() % 100 + 1;
      }
    }


    // for(int i = 0; i < N; i++){
    //     for(int j = 0; j < N; j++){
    //         printf("%d\t",matrix1[i][j]);
    //     }
    //     printf("\n");
    // }

    // printf("\n");

    // for(int i = 0; i < N; i++){
    //     for(int j = 0; j < N; j++){
    //         printf("%d\t",matrix2[i][j]);
    //     }
    //     printf("\n");
    // }

    startTime = clock();

    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            resultMatrix[i][j] = 0;
            for(int k = 0; k < N; k++){
                resultMatrix[i][j] += matrix1[i][k] * matrix2[j][k];
            }
            // printf("%d\t",resultMatrix[i][j]);
        }
        // printf("\n");
    }
    endTime = clock();
    endTime = endTime - startTime;

    double time_taken = ((double)endTime)/CLOCKS_PER_SEC;

    printf("Matrix Multiplication took %f seconds to execute \n", time_taken);

    return 0;
}