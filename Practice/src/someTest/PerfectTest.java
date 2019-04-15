package someTest;

public class PerfectTest {
    public static void main(String[] args) {
        // 完数等于它的所有因子之和
        int i, j;
        int factor = 0;
        for (i = 1; i <= 1000; i++) {
            for (j = 1; j < i; j++) {
                if (i % j == 0)
                    factor = factor + j;
            }
            if (factor == i) {
                System.out.println(i);
            }
            factor = 0;
        }
    }
}
