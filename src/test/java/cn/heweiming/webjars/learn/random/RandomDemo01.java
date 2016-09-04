package cn.heweiming.webjars.learn.random;

import java.util.Random;

import org.apache.log4j.chainsaw.Main;

public class RandomDemo01 {

    public static void main(String[] args) {
        Random random = new Random();
        for (int i = 0; i < 100; i++) {
            System.out.println(new Random().nextInt(1000));
        }
    }
}
