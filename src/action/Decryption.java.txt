package action;

import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Decryption {

    public String decrypt(String text, String key) {
        String decryptedText = null;

        try {
            byte[] keyBytes = Base64.getDecoder().decode(key);
            SecretKeySpec secretKey = new SecretKeySpec(keyBytes, "AES");

            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);

            byte[] encryptedBytes = Base64.getDecoder().decode(text);
            byte[] decryptedBytes = cipher.doFinal(encryptedBytes);

            decryptedText = new String(decryptedBytes);

        } catch (Exception e) {
            System.out.println("Decryption Error: " + e);
        }

        return decryptedText;
    }
}