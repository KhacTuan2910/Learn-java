import java.util.Scanner;

public class ExForSum {
    public static void main(String[] args) {
//        Bai1
//        float s = 0;
//        var input = new Scanner(System.in);
//        System.out.println("Nhập vào số nuyên dương n: ");
//        Float n = input.nextFloat();
//        for (int i = 1; i <= n; i++) {
//            s = s + 1.0f/i;
//            var a = 1.0f/i;
//        }
//        System.out.print("Tổng là: " + s);
//
//        Bai2
//        int s = 1;
//        var input = new Scanner(System.in);
//        System.out.println("Nhập vào số nuyên dương n(n>0): ");
//        int n = input.nextInt();
//        for (int i = 2; i <= n; i++) {
//            s += i;
//        }
//        System.out.println(s);

//        Bai3: Nhập vào chuỗi kí tự. In ra chữ cái đầu mỗi từ
//        String str = "";
//        String[] tu = str.split(" ");
//        for (String s : tu) {
//            if (!s.equals("") && !s.isEmpty()) {
//                var strU = s.toUpperCase();
//                System.out.println(strU.charAt(0));
////            }
//        }

        var h = 5;
        for (int i = 1; i <= h; i++) {
            for (int j = i; j <= h ; j++) {
                System.out.print(" * ");
            }
            System.out.println();
        }



        h = 4;
        for (int i = 1; i <= h; i++) {
            for (int j = 1; j <= h ; j++) {
                if (j >= i) {
                    System.out.print(" * ");

                } else {
                    System.out.print("   ");

                }
            }
            System.out.println();
        }

        for (int i = 0; i < h; i++) {
            for (int j = 0; j < 10; j++) {
                System.out.print(" * ");
            }
            System.out.println();
        }
    }
}
