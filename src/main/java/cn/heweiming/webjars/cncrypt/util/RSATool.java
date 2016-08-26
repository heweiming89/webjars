package cn.heweiming.webjars.cncrypt.util;

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

public class RSATool {

    private static final String RSA_TOOL_PROPERTIES = "RSATool.properties";
    private static final String RSA = "RSA";
    private static final int KEY_SIZE = 1024;

    private static String PRIVATE_BASE_64;
    private static String PUBLIC_BASE_64;
    static {
        try {
            Properties p = new Properties();
            p.load(RSATool.class.getResourceAsStream(RSA_TOOL_PROPERTIES));
            PRIVATE_BASE_64 = p.getProperty("PRIVATE_BASE_64");
            PUBLIC_BASE_64 = p.getProperty("PUBLIC_BASE_64");
            System.out.println(PRIVATE_BASE_64);
            System.out.println(PUBLIC_BASE_64);
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
        // Preferences p = AbstractPreferences.userRoot();
        // p.remove(KEY);
        // p.putByteArray(KEY, bs);
        // return p.get(KEY, null);
        return Base64.byteArrayToBase64(bs);
    }

    public static byte[] base64ToBytes(String vl) {
        // Preferences p = AbstractPreferences.userRoot();
        // p.remove(KEY);
        // p.put(KEY, vl);
        // return p.getByteArray(KEY, null);
        return Base64.base64ToByteArray(vl);
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

    public static String encrypt(String plainText, String pubBase64) throws NoSuchAlgorithmException,
            InvalidKeySpecException {
        KeyFactory factory = KeyFactory.getInstance(RSA);

        byte[] pubBytes = base64ToBytes(pubBase64);
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(pubBytes);
        PublicKey pubKey = factory.generatePublic(keySpec);

        return encrypt(plainText, pubKey);
    }

    public static String decrypt(String cipBase64, String priBase64) throws NoSuchAlgorithmException,
            InvalidKeySpecException {
        byte[] priBytes = base64ToBytes(priBase64);

        KeyFactory factory = KeyFactory.getInstance(RSA);
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(priBytes);
        PrivateKey priKey = factory.generatePrivate(keySpec);

        return decrypt(cipBase64, priKey);
    }

    public static String encrypt(String plainText) throws NoSuchAlgorithmException, InvalidKeySpecException {
        return encrypt(plainText, PUBLIC_BASE_64);
    }

    public static String decrypt(String cipBase64) throws NoSuchAlgorithmException, InvalidKeySpecException {
        return decrypt(cipBase64, PRIVATE_BASE_64);
    }

    public static void main(String args[]) throws Throwable {
        // ////////////////////////////////////////////////////////////////////////////////////////////////////////////
        {
            KeyPairGenerator generator = KeyPairGenerator.getInstance(RSA);
            generator.initialize(KEY_SIZE);
            KeyPair pair = generator.generateKeyPair();
            System.out.println("encoded pri: " + bytesToBase64(pair.getPrivate().getEncoded()));
            System.out.println("encoded pub: " + bytesToBase64(pair.getPublic().getEncoded()));
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

    /**
     * @see java.util.prefs.Base64
     */
    public static class Base64 {
        /**
         * Translates the specified byte array into a Base64 string as per Preferences.put(byte[]).
         */
        static String byteArrayToBase64(byte[] a) {
            return byteArrayToBase64(a, false);
        }

        /**
         * Translates the specified byte array into an "alternate representation" Base64 string. This non-standard
         * variant uses an alphabet that does not contain the uppercase alphabetic characters, which makes it suitable
         * for use in situations where case-folding occurs.
         */
        static String byteArrayToAltBase64(byte[] a) {
            return byteArrayToBase64(a, true);
        }

        private static String byteArrayToBase64(byte[] a, boolean alternate) {
            int aLen = a.length;
            int numFullGroups = aLen / 3;
            int numBytesInPartialGroup = aLen - 3 * numFullGroups;
            int resultLen = 4 * ((aLen + 2) / 3);
            StringBuffer result = new StringBuffer(resultLen);
            char[] intToAlpha = (alternate ? intToAltBase64 : intToBase64);

            // Translate all full groups from byte array elements to Base64
            int inCursor = 0;
            for (int i = 0; i < numFullGroups; i++) {
                int byte0 = a[inCursor++] & 0xff;
                int byte1 = a[inCursor++] & 0xff;
                int byte2 = a[inCursor++] & 0xff;
                result.append(intToAlpha[byte0 >> 2]);
                result.append(intToAlpha[(byte0 << 4) & 0x3f | (byte1 >> 4)]);
                result.append(intToAlpha[(byte1 << 2) & 0x3f | (byte2 >> 6)]);
                result.append(intToAlpha[byte2 & 0x3f]);
            }

            // Translate partial group if present
            if (numBytesInPartialGroup != 0) {
                int byte0 = a[inCursor++] & 0xff;
                result.append(intToAlpha[byte0 >> 2]);
                if (numBytesInPartialGroup == 1) {
                    result.append(intToAlpha[(byte0 << 4) & 0x3f]);
                    result.append("==");
                } else {
                    // assert numBytesInPartialGroup == 2;
                    int byte1 = a[inCursor++] & 0xff;
                    result.append(intToAlpha[(byte0 << 4) & 0x3f | (byte1 >> 4)]);
                    result.append(intToAlpha[(byte1 << 2) & 0x3f]);
                    result.append('=');
                }
            }
            // assert inCursor == a.length;
            // assert result.length() == resultLen;
            return result.toString();
        }

        /**
         * This array is a lookup table that translates 6-bit positive integer index values into their "Base64 Alphabet"
         * equivalents as specified in Table 1 of RFC 2045.
         */
        private static final char intToBase64[] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
                'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g',
                'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0',
                '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/' };

        /**
         * This array is a lookup table that translates 6-bit positive integer index values into their
         * "Alternate Base64 Alphabet" equivalents. This is NOT the real Base64 Alphabet as per in Table 1 of RFC 2045.
         * This alternate alphabet does not use the capital letters. It is designed for use in environments where
         * "case folding" occurs.
         */
        private static final char intToAltBase64[] = { '!', '"', '#', '$', '%', '&', '\'', '(', ')', ',', '-', '.',
                ':', ';', '<', '>', '@', '[', ']', '^', '`', '_', '{', '|', '}', '~', 'a', 'b', 'c', 'd', 'e', 'f',
                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '?' };

        /**
         * Translates the specified Base64 string (as per Preferences.get(byte[])) into a byte array.
         * 
         * @throw IllegalArgumentException if <tt>s</tt> is not a valid Base64 string.
         */
        static byte[] base64ToByteArray(String s) {
            return base64ToByteArray(s, false);
        }

        /**
         * Translates the specified "alternate representation" Base64 string into a byte array.
         * 
         * @throw IllegalArgumentException or ArrayOutOfBoundsException if <tt>s</tt> is not a valid alternate
         *        representation Base64 string.
         */
        static byte[] altBase64ToByteArray(String s) {
            return base64ToByteArray(s, true);
        }

        private static byte[] base64ToByteArray(String s, boolean alternate) {
            byte[] alphaToInt = (alternate ? altBase64ToInt : base64ToInt);
            int sLen = s.length();
            int numGroups = sLen / 4;
            if (4 * numGroups != sLen)
                throw new IllegalArgumentException("String length must be a multiple of four.");
            int missingBytesInLastGroup = 0;
            int numFullGroups = numGroups;
            if (sLen != 0) {
                if (s.charAt(sLen - 1) == '=') {
                    missingBytesInLastGroup++;
                    numFullGroups--;
                }
                if (s.charAt(sLen - 2) == '=')
                    missingBytesInLastGroup++;
            }
            byte[] result = new byte[3 * numGroups - missingBytesInLastGroup];

            // Translate all full groups from base64 to byte array elements
            int inCursor = 0, outCursor = 0;
            for (int i = 0; i < numFullGroups; i++) {
                int ch0 = base64toInt(s.charAt(inCursor++), alphaToInt);
                int ch1 = base64toInt(s.charAt(inCursor++), alphaToInt);
                int ch2 = base64toInt(s.charAt(inCursor++), alphaToInt);
                int ch3 = base64toInt(s.charAt(inCursor++), alphaToInt);
                result[outCursor++] = (byte) ((ch0 << 2) | (ch1 >> 4));
                result[outCursor++] = (byte) ((ch1 << 4) | (ch2 >> 2));
                result[outCursor++] = (byte) ((ch2 << 6) | ch3);
            }

            // Translate partial group, if present
            if (missingBytesInLastGroup != 0) {
                int ch0 = base64toInt(s.charAt(inCursor++), alphaToInt);
                int ch1 = base64toInt(s.charAt(inCursor++), alphaToInt);
                result[outCursor++] = (byte) ((ch0 << 2) | (ch1 >> 4));

                if (missingBytesInLastGroup == 1) {
                    int ch2 = base64toInt(s.charAt(inCursor++), alphaToInt);
                    result[outCursor++] = (byte) ((ch1 << 4) | (ch2 >> 2));
                }
            }
            // assert inCursor == s.length()-missingBytesInLastGroup;
            // assert outCursor == result.length;
            return result;
        }

        /**
         * Translates the specified character, which is assumed to be in the "Base 64 Alphabet" into its equivalent
         * 6-bit positive integer.
         * 
         * @throw IllegalArgumentException or ArrayOutOfBoundsException if c is not in the Base64 Alphabet.
         */
        private static int base64toInt(char c, byte[] alphaToInt) {
            int result = alphaToInt[c];
            if (result < 0)
                throw new IllegalArgumentException("Illegal character " + c);
            return result;
        }

        /**
         * This array is a lookup table that translates unicode characters drawn from the "Base64 Alphabet" (as
         * specified in Table 1 of RFC 2045) into their 6-bit positive integer equivalents. Characters that are not in
         * the Base64 alphabet but fall within the bounds of the array are translated to -1.
         */
        private static final byte base64ToInt[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4,
                5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 };

        /**
         * This array is the analogue of base64ToInt, but for the nonstandard variant that avoids the use of uppercase
         * alphabetic characters.
         */
        private static final byte altBase64ToInt[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, -1, 62,
                9, 10, 11, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 12, 13, 14, -1, 15, 63, 16, -1, -1, -1, -1, -1,
                -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 17, -1, 18, 19, 21,
                20, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
                51, 22, 23, 24, 25 };

        public static void main(String args[]) {
            int numRuns = Integer.parseInt(args[0]);
            int numBytes = Integer.parseInt(args[1]);
            java.util.Random rnd = new java.util.Random();
            for (int i = 0; i < numRuns; i++) {
                for (int j = 0; j < numBytes; j++) {
                    byte[] arr = new byte[j];
                    for (int k = 0; k < j; k++)
                        arr[k] = (byte) rnd.nextInt();

                    String s = byteArrayToBase64(arr);
                    byte[] b = base64ToByteArray(s);
                    if (!java.util.Arrays.equals(arr, b))
                        System.out.println("Dismal failure!");

                    s = byteArrayToAltBase64(arr);
                    b = altBase64ToByteArray(s);
                    if (!java.util.Arrays.equals(arr, b))
                        System.out.println("Alternate dismal failure!");
                }
            }
        }
    }

}