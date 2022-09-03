import java.time.Duration;
import java.time.Instant;

public class MatrixMultiplication {
	public static void main(String[] args) {
		
		Instant execStart = Instant.now();

		int N = Integer.valueOf(args[0]);
//		long noOfMultiplications = 0;
		int[][] matrix1 = new int[N][N];
		int[][] matrix2 = new int[N][N];
		int[][] resultMatrix = new int[N][N];

		// Matrix Element assigning part
		for (int i = 0; i < N; i++) {
			for (int j = 0; j < N; j++) {
				matrix1[i][j] = (int) (Math.random() * 100);
				matrix2[j][i] = (int) (Math.random() * 100);
			}
		}
		// taking start time of meat code
		Instant start = Instant.now();
		

		// Matrix Multiplication part
		for (int i = 0; i < N; i++) {
			for (int j = 0; j < N; j++) {
				resultMatrix[i][j] = 0;
				for (int k = 0; k < N; k++) {
					resultMatrix[i][j] += matrix1[i][k] * matrix2[j][k];
				}
			}
		}

		Instant finish = Instant.now();
		long timeElapsed = Duration.between(start, finish).toMillis();
		System.out.println("Matrix Multiplication Time:\t:" + timeElapsed + "ms");
		
		Instant execEnd = Instant.now();
		System.out.println("Total execution Time: " + (Duration.between(execStart, execEnd).toMillis()) + "ms");
	}
}
