package cn.heweiming.webjars.learn.recursion;

public class RecursionDemo01 {

    public static void main(String[] args) {
        // decimalToBinary(4);
        int sum = sum(6);
        System.out.println(sum);
    }

    public String recursion01() {
        return null;
    }

    public static void decimalToBinary(int num) {
        if (num == 0) {
            return;
        } else {
            decimalToBinary(num / 2);
            System.out.print(num % 2);
        }
    }

    public static int sum(int num) {
        System.out.println(num);
        if (num > 0) {
            return num + sum(num - 1);
        } else {
            return 0;
        }
    }

}
