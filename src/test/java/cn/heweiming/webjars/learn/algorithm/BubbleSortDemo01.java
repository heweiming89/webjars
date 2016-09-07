package cn.heweiming.webjars.learn.algorithm;

import java.util.Arrays;

import org.testng.annotations.Test;

public class BubbleSortDemo01 {

    @Test
    public void test01() {
        // int[] array = { -5, -9, 2, 5, 10, 7, 16 };
        int[] array = { -5, 2, 5, -9, 10, 7, 16 };
        for (int i = 0; i < array.length - 1; i++) {
            if (array[i] > array[i + 1]) {
                int temp = array[i];
                array[i] = array[i + 1];
                array[i + 1] = temp;
            }
        }
        System.out.println(Arrays.toString(array));
    }

    @Test
    public void test02() {
        int outside = 0;
        int inside = 0;
        int[] array = { -5, 2, 5, -9, 16, 10, 7 };
        for (int i = 0, len = array.length; i < len - 1; i++) {
            outside++;
            for (int j = 0; j < len - i - 1; j++) {
                inside++;
                if (array[j] < array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
        System.out.println(Arrays.toString(array));
        System.out.println("外部循环了 " + outside + " 次");
        System.out.println("内部循环了 " + inside + " 次");
    }
}
