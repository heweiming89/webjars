package cn.heweiming.webjars.learn.algorithm;

import java.util.Arrays;

import org.testng.annotations.Test;

public class SelectionSortDemo01 {

    @Test
    public void test01() {
        int inside = 0;
        int outside = 0;
        int[] array = { -5, 2, 5, -9, 10, 7, 16 };
        for (int i = 0, size = array.length - 1; i < size; i++) {
            outside++;
            for (int j = i + 1; j < size; j++) {
                inside++;
                if (array[i] > array[j]) {
                    int temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }
        System.out.println(Arrays.toString(array));
        System.out.println("外部循环了 " + outside + " 次");
        System.out.println("内部循环了 " + inside + " 次");
    }
}
