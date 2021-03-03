package EnviarEmail_Controller;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 *
 * @author www.codejava.net
 *
 */
@WebServlet("/EmailSendingServlet")
public class Dados_Compra extends HttpServlet {

    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String recipient = request.getParameter("txt_email");
        String subject = "Solicitação de Compra";
        String content = "Olá, Sr(a).\n\nEstamos Avaliando os seus dados para a compra. Caso seja aprovado entraremos em contato!\n\nAtenciosamente,\nEquipe Carro Certo\n(61)3388-2096\nportal.carrocerto@gmail.com";

        String resultMessage = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");

            if (request.getParameter("btncomprar") != null) {
                String nome, cpf, email, telefone, cep, endereco, estado, cidade, banco, entrada, parcelas;
                nome = request.getParameter("txt_nome");
                cpf = request.getParameter("txt_cpf");
                email = request.getParameter("txt_email");
                telefone = request.getParameter("txt_telefone");
                cep = request.getParameter("txt_cep");
                endereco = request.getParameter("txt_endereco");
                estado = request.getParameter("txt_estado");
                cidade = request.getParameter("txt_cidade");
                banco = request.getParameter("txt_banco");
                entrada = request.getParameter("txt_entrada");
                parcelas = request.getParameter("txt_parcelas");
                PreparedStatement pstmt = null;

                pstmt = con.prepareStatement("insert into venda_solicitacao(nome,cpf,email,telefone,cep,endereco,estado,cidade,banco,entrada,parcelas)values(?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, nome);
                pstmt.setString(2, cpf);
                pstmt.setString(3, email);
                pstmt.setString(4, telefone);
                pstmt.setString(5, cep);
                pstmt.setString(6, endereco);
                pstmt.setString(7, estado);
                pstmt.setString(8, cidade);
                pstmt.setString(9, banco);
                pstmt.setString(10, entrada);
                pstmt.setString(11, parcelas);
                pstmt.executeUpdate();

                con.close();

            }

        } catch (Exception e) {
            out.println(e);
        }

        try {
            EnviarEmail.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "Email Enviado com Sucesso!";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "ERRO " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/EnvioBanco.jsp").forward(
                    request, response);
        }
    }
}
