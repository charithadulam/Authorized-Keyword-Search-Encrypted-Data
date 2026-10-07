package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import databaseconnection.DatabaseCon;

public class KeywordSearch {

    public void search(String keyword) {

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            con = DatabaseCon.getConnection();

            String sql = "SELECT filename, encrypted_data "
                       + "FROM encrypted_data "
                       + "WHERE keyword = ?";

            ps = con.prepareStatement(sql);

            ps.setString(1, keyword);

            rs = ps.executeQuery();

            while (rs.next()) {

                System.out.println(
                    "File: " + rs.getString("filename")
                );

                System.out.println(
                    "Encrypted Data: "
                    + rs.getString("encrypted_data")
                );
            }

        } catch (Exception e) {

            System.out.println("Search Error: " + e);

        } finally {

            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                System.out.println("Closing Error: " + e);
            }
        }
    }
}