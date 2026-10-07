package action;

import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Encryption {

    public String encrypt(String text, String key) {

        String encryptedText = null;

        try {

            byte[] keyBytes = Base64.getDecoder().decode(key);

            SecretKeySpec secretKey =
                    new SecretKeySpec(keyBytes, "AES");

            Cipher cipher = Cipher.getInstance("AES");

            cipher.init(Cipher.ENCRYPT_MODE, secretKey);

            byte[] encryptedBytes =
                    cipher.doFinal(text.getBytes());

            encryptedText =
                    Base64.getEncoder().encodeToString(encryptedBytes);

        } catch (Exception e) {

            System.out.println("Encryption Error: " + e);
        }

        return encryptedText;
    }
}