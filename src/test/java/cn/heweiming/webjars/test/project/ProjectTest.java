package cn.heweiming.webjars.test.project;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.heweiming.webjars.bean.Person;
import cn.heweiming.webjars.enums.Gender;
import cn.heweiming.webjars.mapper.ConsumerMapper;
import cn.heweiming.webjars.mapper.UserMapper;
import cn.heweiming.webjars.model.Consumer;
import cn.heweiming.webjars.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class ProjectTest {

    @Autowired
    private ConsumerMapper consumerMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private Person person;

    @Test
    public void testMyBatis() {
        Consumer user = new Consumer();
        user.setUsername("测试" + new Random().nextInt());
        user.setGender(Gender.UNKNOWN);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        consumerMapper.insert(user);
    }

    @Test
    public void testMyBatis01() {
        Consumer user = new Consumer();
        user.setBirthday(new Date());
        user.setGender(Gender.MALE);
        user.setUsername("张三");
        consumerMapper.insert(user);
    }

    @Test
    public void testMyBatis02() {
        Consumer user = new Consumer();
        user.setBirthday(new Date());
        user.setGender(Gender.FEMALE);
        user.setUsername("李四");
        consumerMapper.insert(user);
    }

    @Test
    public void testMyBatis03() {
        Consumer user = new Consumer();
        user.setUsername("王五");
        user.setGender(Gender.MALE_TO_FEMALE);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        consumerMapper.insert(user);
    }

    @Test
    public void testMyBatis04() {
        Consumer user = new Consumer();
        user.setUsername("赵六");
        user.setGender(Gender.FEMALE_TO_MALE);
        Date date = new Date();
        user.setBirthday(date);
        user.setCreateTime(date);
        consumerMapper.insert(user);
    }

    @Test
    public void testMyBatis05() {
        Consumer user = consumerMapper.selectByPrimaryKey(6);
        System.out.println(user);
    }

    @Test
    public void testCode() {
        for (int i = 0; i < 10; i++) {
            System.out.println(new Random().nextInt());
        }
    }

    @Test
    public void testIncludeXml() {
        System.out.println(person.getName());
    }

    @Test
    public void test20160913152148() {
        User user = new User();
        user.setUsername("用户名" + new Random().nextInt());
        // user.setLocked(Boolean.TRUE);
        user.setLocked(Boolean.FALSE);
        userMapper.insert(user);
    }

    @Test
    public void test20160913152731() {
        List<User> users = userMapper.selectAll();
        for (User user : users) {
            System.out.println(user.getLocked());
        }
    }

}
