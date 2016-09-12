package cn.heweiming.webjars.test;

import org.junit.Test;
import org.springframework.util.MimeType;

public class SpringTest {

    @Test
    public void test01(){
        String name1 = "file.txt";
        String name2 = "file.html";
        String name3 = "file.docx";
        String name4 = "file.xml";
        String name5 = "file.xlsx";
        System.out.println(MimeType.valueOf(name1));
    }
}
