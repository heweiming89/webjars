package cn.heweiming.webjars.test.project;

import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.heweiming.webjars.enumeration.Gender;
import cn.heweiming.webjars.mapper.UserMapper;
import cn.heweiming.webjars.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class ProjectTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void testMyBatis() {
        User user = new User();
        user.setUsername("测试" + new Random().nextInt());
        user.setGender(Gender.UNKNOWN);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        userMapper.insert(user);
    }

    @Test
    public void testMyBatis01() {
        User user = new User();
        user.setBirthday(new Date());
        user.setGender(Gender.MALE);
        user.setUsername("张三");
        userMapper.insert(user);
    }

    @Test
    public void testMyBatis02() {
        User user = new User();
        user.setBirthday(new Date());
        user.setGender(Gender.FEMALE);
        user.setUsername("李四");
        userMapper.insert(user);
    }

    @Test
    public void testMyBatis03() {
        User user = new User();
        user.setUsername("王五");
        user.setGender(Gender.MALE_TO_FEMALE);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        userMapper.insert(user);
    }

    @Test
    public void testMyBatis04() {
        User user = new User();
        user.setUsername("赵六");
        user.setGender(Gender.FEMALE_TO_MALE);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        userMapper.insert(user);
    }

    @Test
    public void testMyBatis05() {
        User user = userMapper.selectByPrimaryKey(6);
        System.out.println(user);
    }

    @Test
    public void testCode() {
        for (int i = 0; i < 10; i++) {
            System.out.println(new Random().nextInt());
        }
    }

}
