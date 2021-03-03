package Dao;

import Bean.LoginBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

    public String LoginAutorizado(LoginBean loginBean) {
        String email = loginBean.getEmail();
        String senha = loginBean.getSenha();

        String dbemail="";  
        String dbsenha="";

        String url = "jdbc:mysql://localhost:3306/carro_certo";
        String uname = "root";
        String pass = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, uname, pass);
            PreparedStatement pstmt = null;

            pstmt = con.prepareStatement("select * from usuario where email=? and senha=?");
            pstmt.setString(1, email);
            pstmt.setString(2, senha);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                dbemail = rs.getString("email");
                dbsenha = rs.getString("senha");

                if (email.equals(dbemail) && senha.equals(dbsenha)) {
                    return "Sucesso Login";
                }
            }

            pstmt.close();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Email ou senha invalidos ...";
    }
}
