package cn.heweiming.webjars.learn.codec;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.authc.credential.PasswordService;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.DefaultHashService;
import org.apache.shiro.crypto.hash.HashRequest;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;
import org.junit.Test;

public class CodecDemo01 {

    @Test
    public void demo() {
        String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();
        System.out.println(salt2);
    }

    @Test
    public void testHashCodec() {
        String str = "123456";
        String salt = "qwert";
        String sha1 = new Sha256Hash(str, salt).toString();
        System.out.println(sha1);
    }

    @Test
    public void testHashService() {
        DefaultHashService hashService = new DefaultHashService();
        hashService.setHashAlgorithmName("SHA-512");
        hashService.setPrivateSalt(new SimpleByteSource("123"));
        hashService.setGeneratePublicSalt(true);
        hashService.setRandomNumberGenerator(new SecureRandomNumberGenerator());
        hashService.setHashIterations(1);

        HashRequest request = new HashRequest.Builder().setAlgorithmName("MD5")
                .setSource(ByteSource.Util.bytes("hello"))
                .setSalt(ByteSource.Util.bytes("123")).setIterations(2).build();
        String hex = hashService.computeHash(request).toHex();
        System.out.println(hex);

    }

    @Test
    public void testPasswordService() {
        PasswordService passwordService = new DefaultPasswordService();
        String plaintextPassword = "123456";
        String ciphertextPassword = passwordService.encryptPassword(plaintextPassword);
        System.out.println(ciphertextPassword);
        boolean match = passwordService.passwordsMatch(plaintextPassword,
                ciphertextPassword);
        System.out.println(match);
    }
}
