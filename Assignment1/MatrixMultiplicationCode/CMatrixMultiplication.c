#include<stdio.h>
#include<stdlib.h>
#include <time.h>
#define BILLION  1000000000.0

int main(int argc, char *argv[] ){

    struct timespec startTime, endTime, execStartTime, execEndTime;
    timespec_get(&execStartTime, TIME_UTC);

    int N = atoi(argv[1]);
    printf("N is %d\n", N);
    int **matrix1, **matrix2, **resultMatrix;
    time_t t;    

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

    timespec_get(&startTime, TIME_UTC);

    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            resultMatrix[i][j] = 0;
            for(int k = 0; k < N; k++){
                resultMatrix[i][j] += matrix1[i][k] * matrix2[j][k];
            }
        }
    }
    timespec_get(&endTime, TIME_UTC);

    double time_taken = (endTime.tv_sec - startTime.tv_sec) +
                        (endTime.tv_nsec - startTime.tv_nsec) / BILLION;

    printf("Matrix Multiplication took %f s to execute \n", time_taken);
    timespec_get(&execEndTime, TIME_UTC);\

    double exec_time_taken = (execEndTime.tv_sec - execStartTime.tv_sec) +
                        (execEndTime.tv_nsec - execStartTime.tv_nsec) / BILLION;
    printf("Program execution took %f s \n", exec_time_taken);
    return 0;
}
