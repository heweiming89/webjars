package cn.heweiming.webjars.utils;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

import javax.crypto.Cipher;

import org.apache.commons.codec.binary.Base64;

public class RsaEncryptUtilsUpdate {

    private static final String RSA_TOOL_PROPERTIES = "RSAEncrypt.properties";
    private static final String RSA = "RSA";
    private static final int KEY_SIZE = 1024;

    private static String PRIVATE_BASE_64;
    private static String PUBLIC_BASE_64;

    static {
        try {
            Properties p = new Properties();
            p.load(RsaEncryptUtilsUpdate.class.getResourceAsStream(RSA_TOOL_PROPERTIES));
            PRIVATE_BASE_64 = p.getProperty("PRIVATE_BASE_64");
            PUBLIC_BASE_64 = p.getProperty("PUBLIC_BASE_64");
        } catch (IOException e) {
            throw new RuntimeException("Failed to get RSATool.properties file.", e);
        }
    }

    public final static String encrypt(String text, PublicKey uk) {
        StringBuffer sbf = new StringBuffer();
        try {
            byte[] ebs = encryptBytes(text.getBytes(), uk);
            sbf.append(bytesToBase64(ebs));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sbf.toString();
    }

    private static byte[] encryptBytes(byte[] text, PublicKey pubRSA) throws Exception {
        Cipher cipher = Cipher.getInstance(RSA);
        cipher.init(Cipher.ENCRYPT_MODE, pubRSA);
        return cipher.doFinal(text);
    }

    public final static String decrypt(String data, PrivateKey rk) {
        byte[] bs = base64ToBytes(data);
        byte[] dbs = {};
        try {
            dbs = decrypt(bs, rk);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new String(dbs);
    }

    private static byte[] decrypt(byte[] src, PrivateKey rk) throws Exception {
        Cipher cipher = Cipher.getInstance(RSA);
        cipher.init(Cipher.DECRYPT_MODE, rk);
        return cipher.doFinal(src);
    }

    public static String bytesToBase64(byte[] bs) {
        return new String(Base64.encodeBase64(bs, false));
    }

    public static byte[] base64ToBytes(String vl) {
        return Base64.decodeBase64(vl);
    }

    public static String b64to16(String b64str) {
        byte[] bs = base64ToBytes(b64str);
        String b16 = "";
        for (int i = 0; i < bs.length; i += 1) {
            b16 += toHex(bs[i]);
        }
        return b16;
    }

    private static String toHex(byte b) {
        return Integer.toHexString((b & 0xF0) >> 4) + Integer.toHexString(b & 0x0F);
    }

    public static byte[] hexToBytes(String s) {
        byte[] bs = new byte[s.length() / 2];
        for (int i = 0; i < s.length(); i += 2) {
            bs[i / 2] = (byte) (s.charAt(i) * 16 + s.charAt(i + 1));
        }
        return bs;
    }

    public static String encrypt(String plainText, String pubBase64)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        KeyFactory factory = KeyFactory.getInstance(RSA);

        byte[] pubBytes = base64ToBytes(pubBase64);
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(pubBytes);
        PublicKey pubKey = factory.generatePublic(keySpec);

        return encrypt(plainText, pubKey);
    }

    public static String decrypt(String cipBase64, String priBase64)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        byte[] priBytes = base64ToBytes(priBase64);

        KeyFactory factory = KeyFactory.getInstance(RSA);
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(priBytes);
        PrivateKey priKey = factory.generatePrivate(keySpec);

        return decrypt(cipBase64, priKey);
    }

    public static String encrypt(String plainText)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        return encrypt(plainText, PUBLIC_BASE_64);
    }

    public static String decrypt(String cipBase64)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        return decrypt(cipBase64, PRIVATE_BASE_64);
    }

    public static void main(String args[]) throws Throwable {
        {
            KeyPairGenerator generator = KeyPairGenerator.getInstance(RSA);
            generator.initialize(KEY_SIZE);
            KeyPair pair = generator.generateKeyPair();
            System.out.println(
                    "encoded pri: " + bytesToBase64(pair.getPrivate().getEncoded()));
            System.out.println(
                    "encoded pub: " + bytesToBase64(pair.getPublic().getEncoded()));
        }

        // ////////////////////////////////////////////////////////////////////////////////////////////////////////////
        {
            String newCip64 = encrypt("okok");
            System.out.println("cipText: " + newCip64);
            System.out.println("decryptCipText 1: " + decrypt(newCip64));
        }

        // ////////////////////////////////////////////////////////////////////////////////////////////////////////////
        {
            String existCip64 = "FQfFDaN4LdSKNVyA+MtnftDDKwk7y1e+qKcwjx9C8yzAEuTGc/XVzXToOEsItCU87+n0cJH1TZEqlpSkmsspsw==";
            System.out.println("decryptCipText 2: " + decrypt(existCip64));
        }
    }

}