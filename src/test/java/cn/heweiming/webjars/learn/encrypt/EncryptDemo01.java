package cn.heweiming.webjars.learn.encrypt;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

import org.testng.annotations.Test;

import cn.heweiming.webjars.utils.RSAEncryptUtils;

public class EncryptDemo01 {

    public static void main(String[] args) {
        ScriptEngineManager sem = new ScriptEngineManager();
        ScriptEngine se = sem.getEngineByName("javascript");
    }
    
    
    @Test
    public void test01() throws NoSuchAlgorithmException, InvalidKeySpecException{
        String ciphertext = "H+oGf59g9EsUnfnf9gjDSRIRIgdwrAiRRZXQ1Nnyr1q7815wMIL1F6KfnRRgDn0ULyA9JOFw3FIdVDriZ6PUoQ2Is49Kmk+hCCzUpImstw0n77X8SZ7Bx6bX0SZxl9W8g1BhMh0qiZtFgdk+/1qW/1j4AFS9t8+7IXoSsfUrMaA=";
        String plaintext = RSAEncryptUtils.decrypt(ciphertext);
        System.out.println(plaintext);
    }
    
    
    @Test
    public void test02(){
        
    }
    
}
