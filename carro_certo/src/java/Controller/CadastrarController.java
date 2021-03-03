package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.CadastrarBean;
import Dao.CadastrarDao;

public class CadastrarController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("btn_cadastrar") != null) {
            String nome = request.getParameter("txt_nome");
            String email = request.getParameter("txt_email");
            String cep = request.getParameter("txt_cep");
            String cpf = request.getParameter("txt_cpf");
            String cidade = request.getParameter("txt_cidade");
            String telefone = request.getParameter("txt_telefone");
            String senha = request.getParameter("txt_senha");
            String endereco = request.getParameter("txt_endereco");
            String estado = request.getParameter("txt_estado");

            CadastrarBean registerBean = new CadastrarBean();

            registerBean.setNome(nome);
            registerBean.setEmail(email);
            registerBean.setCep(cep);
            registerBean.setCpf(cpf);
            registerBean.setCidade(cidade);
            registerBean.setTelefone(telefone);
            registerBean.setSenha(senha);
            registerBean.setEndereco(endereco);
            registerBean.setEstado(estado);

            CadastrarDao registerdao = new CadastrarDao();

            String registerValidate = registerdao.authorizeRegister(registerBean);

            if (registerValidate.equals("Cadastrado com Sucesso!")) {
                request.setAttribute("CadastroSucesso", registerValidate);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("CadastroErro", registerValidate);
                RequestDispatcher rd = request.getRequestDispatcher("cadastro.jsp");
                rd.include(request, response);
            }
        }
    }

}
