package Controller;

import Bean.LoginBean;
import Dao.LoginDao;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet 
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        if(request.getParameter("btn_login")!=null) 
        {
            String email=request.getParameter("txt_email"); 
            String senha=request.getParameter("txt_senha");
            
            LoginBean loginBean=new LoginBean(); 
            
            loginBean.setEmail(email);
            loginBean.setSenha(senha); 
            
            LoginDao loginDao=new LoginDao(); 
            
            String authorize=loginDao.LoginAutorizado(loginBean); 
            
            if(authorize.equals("Sucesso Login"))
            {
                HttpSession session=request.getSession(); 
                session.setAttribute("login",loginBean.getEmail()); 
                RequestDispatcher rd=request.getRequestDispatcher("tela_inicio.jsp"); 
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("LoginErro",authorize); 
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
            }
        }
    }

}
