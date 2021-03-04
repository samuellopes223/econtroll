/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.TempoSessao;
import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Samuel
 */
public class TempoSessaoDao {
    public void adicionarSessao(TempoSessao t) {

        Connection con = ConnectionFactory.getConnection();

        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO tb_tempo_sessao (dt_hora_saida,tempo_expediente,dt_hora_entrada, id_usuario)VALUES(?,?,?,?)");
            stmt.setString(1, t.getData_saida());
            stmt.setString(2, t.getDuracao());
            stmt.setString(3, t.getData_entrada());
            stmt.setString(4, t.getId_usuario());
            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Salvo com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }


}
