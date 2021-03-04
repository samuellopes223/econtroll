package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Samuel
 */
public class LoginDao {

    private static String id;
    private static String tipo;

    public boolean verificaLogin(String matricula, String senha) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        boolean check = false;

        try {
            stmt = con.prepareStatement("SELECT id_usuario,id_tipo FROM usuarios WHERE matricula = ? and senha = ?");
            stmt.setString(1, matricula);
            stmt.setString(2, senha);
            rs = stmt.executeQuery();
            while (rs.next()) {
                check = true;
                id = rs.getString("id_usuario");
                tipo = rs.getString("id_tipo");
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return check;

    }
    public String capturaid() {
        return id;
    }
    public String retornatipo() {
        return tipo;
    }

}
