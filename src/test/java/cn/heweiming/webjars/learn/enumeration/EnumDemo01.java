package cn.heweiming.webjars.learn.enumeration;

import org.junit.Test;

import cn.heweiming.webjars.enums.Gender;

public class EnumDemo01 {

    @Test
    public void demo01() {
        Gender[] genders = Gender.values();
        for (Gender gender : genders) {
            System.out.println(gender.getCode());
        }

    }
}
