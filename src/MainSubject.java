import java.util.Scanner;

public class MainSubject {
    public static void main(String[] args) {
        var input = new Scanner(System.in);
        System.out.print("Nhập vào số lượng môn học: ");
        var numOfSubject = input.nextInt();
        input.nextLine();
        if (numOfSubject > 0) {
            Subject[] subjects = new Subject[numOfSubject];
            fillSubsInfo(subjects, input);
            showSubs(subjects);
        } else {
            System.out.println("Vui lòng nhập số tiết học phải dương");
        }
    }

    private static void showSubs(Subject[] subjects) {
        System.out.println("===================== " +
                "Thông tin môn học =====================");
        System.out.printf("%-15s%-20s%-15s%-15s%-15s\n",
                "Mã môn học", "Tên môn học",
                "Số tín chỉ", "Số tiết", "Số bài kiểm tra");
        for (var sub : subjects) {
            sub.showInfoInline();
        }
    }

    private static void fillSubsInfo(Subject[] subjects, Scanner input) {
        for (int i = 0; i < subjects.length; i++) {
            Subject subject = new Subject();
            System.out.println("Nhập môn học thứ " + (i + 1) + ":");
            System.out.print("Mã môn học: ");
            subject.setId(input.nextLine());
            System.out.print("Tên môn học: ");
            subject.setName(input.nextLine());
            System.out.print("Số tín chỉ: ");
            subject.setCredit(input.nextInt());
            System.out.print("Số tiết môn học: ");
            subject.setNumOfLesson(input.nextInt());
            System.out.print("Số bài kiểm tra: ");
            subject.setNumOfTest(input.nextInt());
            input.nextLine();

            subjects[i] = subject;
        }
    }

}
