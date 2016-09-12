package cn.heweiming.webjars.learn.base64;

import org.apache.commons.codec.binary.Base64;

public class Base64Demo01 {

    public static void main(String[] args) {
        String str = "123456";
        String salt = "qwert";
        byte[] bytes = str.getBytes();
        String encodeBase64String = Base64.encodeBase64String(str.getBytes());
        System.out.println(new String(Base64.decodeBase64(encodeBase64String)));
        System.out.println(new String(encodeBase64String));
    }
}
