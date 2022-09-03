import java.time.Duration;
import java.time.Instant;

public class JavaFloatMatrixMultiplication {
	public static void main(String[] args) {
		Instant execStart = Instant.now();
		
		int N = Integer.valueOf(args[0]);
		System.out.println(N);
		double[][] matrix1 = new double[N][N];
		double[][] matrix2 = new double[N][N];
		double[][] resultMatrix = new double[N][N];

		// Matrix Element assigning part
		for (int i = 0; i < N; i++) {
			for (int j = 0; j < N; j++) {
				matrix1[i][j] = (Math.random() * 100);
				matrix2[j][i] = (Math.random() * 100);
			}
		}

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
