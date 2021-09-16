public class Subject {
    private String id;
    private String name;
    private int credit;
    private int numOfLesson;
    private int numOfTest;

    public Subject() {
        id = "";
        name = "";
    }

    public Subject(String id) {
        this.id = id;
    }

    public Subject(String id, String name) {
        this(id);
        this.name = name;
    }

    public Subject(String id, String name, int credit) {
        this(id, name);
        this.credit = credit;
    }

    public Subject(String id, String name, int credit, int numOfLesson) {
        this(id, name, credit);
        this.numOfLesson = numOfLesson;
    }

    public Subject(String id, String name, int credit, int numOfLesson, int numOfTest) {
        this(id, name, credit, numOfLesson);
        this.numOfTest = numOfTest;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public int getNumOfLesson() {
        return numOfLesson;
    }

    public void setNumOfLesson(int numOfLesson) {
        this.numOfLesson = numOfLesson;
    }

    public int getNumOfTest() {
        return numOfTest;
    }

    public void setNumOfTest(int numOfTest) {
        this.numOfTest = numOfTest;
    }

    public String fullInfo() {
        return "Mã môn học: " + id + "\nTên môn học: "
                + name + "\nSố tín chỉ: " + credit + "\nSố tiết học: "
                + numOfLesson + "\nSố Bài kiểm tra: " + numOfTest;
    }

    public void showInfoInline() {
        System.out.printf("%-15s%-20s%-15d%-15d%-15d\n",
                id, name, credit, numOfLesson, numOfTest);
    }
}
