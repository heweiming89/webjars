package cn.heweiming.webjars.learn.base64;

import org.apache.commons.codec.binary.Base64;

public class Base64Demo01 {

    public static void main(String[] args) {
        String str = "123456";
        byte[] bytes = str.getBytes();
        byte[] encodeBase64 = Base64.encodeBase64(bytes);
        System.out.println(new String(encodeBase64));
        System.out.println(new String(Base64.decodeBase64(encodeBase64)));
    }
}
