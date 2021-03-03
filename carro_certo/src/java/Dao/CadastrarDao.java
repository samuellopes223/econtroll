package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import Bean.CadastrarBean;

public class CadastrarDao 
{
    public String authorizeRegister(CadastrarBean registerBean) 
    {
        String nome =registerBean.getNome();
        String email= registerBean.getEmail();
        String senha = registerBean.getSenha();
        String cep = registerBean.getCep();
        String cpf = registerBean.getCpf();
        String cidade = registerBean.getCidade();
        String telefone = registerBean.getTelefone();
        String endereco = registerBean.getEndereco();
        String estado = registerBean.getEstado();
         
     
        String url="jdbc:mysql://localhost:3306/carro_certo";
        String uname="root"; 
        String pass=""; 
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection(url,uname,pass); 
            
            PreparedStatement pstmt=null; 
            
            pstmt=con.prepareStatement("insert into usuario (nome,email,cidade,cpf,cep,telefone,endereco,senha,estado) values(?,?,?,?,?,?,?,?,?)"); 
            pstmt.setString(1,nome);
            pstmt.setString(2,email);
            pstmt.setString(3,cidade);
            pstmt.setString(4, cpf);
            pstmt.setString(5, cep);
            pstmt.setString(6, telefone);
            pstmt.setString(7, endereco);
            pstmt.setString(8, senha);
            pstmt.setString(9, estado);
            pstmt.executeUpdate(); 
             
            pstmt.close(); 
            
            con.close(); 
           
            return "Cadastrado com Sucesso!"; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
            return "Ocorreu algum erro. entre em contato com o suporte!"; 
    }
}
