import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Scanner;

public class Sort {
    public static void main(String[] args) {
        var in = new Scanner(System.in);
        System.out.print("Nhập vào số phần tử mảng: ");
        int n = in.nextInt();
        var nums = createArr(n, in);
        var numsCopy = Arrays.copyOf(nums, n);
        showArr(nums);
        Arrays.sort(nums);
        System.out.println("Mảng sau khi được sắp xếp:");
        showArr(nums);
        var max2 = findMax2(nums);
        System.out.print("Phần tử lớn thứ 2: " + max2);
        findIndexMax2(max2, numsCopy);

    }

    private static void findIndexMax2(int max2, int[] nums) {
        System.out.println("index: ");
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == max2) {
                System.out.print(i + " ");
            }
        }
    }

    private static int findMax2(int[] nums) {
        int max = nums[nums.length - 1];
        // tim max 2
        for (int i = nums.length - 1; i >= 0; i--) {
            if (nums[i] != max) {
                return nums[i];
            }
        }
        return max;
    }

    private static void showArr(int[] nums) {
        for (var item : nums) {
            System.out.print(item + " ");
        }
        System.out.println();
    }

    private static int[] createArr(int n, Scanner in) {
        var nums = new int[n];
        for (int i = 0; i < n; i++) {
            System.out.println("Nhập phần tử thứ " + (i + 1) + ": ");
            nums[i] = in.nextInt();
        }
        return nums;
    }
}
