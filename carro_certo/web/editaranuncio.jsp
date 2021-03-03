<%@page import="java.sql.*" %>

<html>

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>Carro Certo - Editar Dados</title>

        <style type="text/css">

            .main
            {
                width:1000px;;
                margin-left:250px;
                padding: 10px;
               

            }
            table
            {
                font-family: verdana, sans-serif;
                border-collapse: collapse;
                width: 700px;
                background-color:#EAEFF2;
            }
            td
            {
                border: 5px solid silver;
                text-align: center;
                padding: 8px;
            }
            .titulo{
              
               padding: 8px;
                text-align: center;
            }
        </style>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");

                if (request.getParameter("delete") != null) {
                    int id = Integer.parseInt(request.getParameter("delete"));

                    PreparedStatement pstmt = null;

                    pstmt = con.prepareStatement("delete from automovel where id_automovel=? ");
                    pstmt.setInt(1, id);
                    pstmt.executeUpdate();

                    con.close();
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>

    </head>	

    <body>
        <a href="tela_inicio.jsp"><p class="anav">Voltar</p></a>
        <div class="titulo">
             <h2 class="display-2"style="font-size:50px">Carro Certo</h2>
        <h4 class="display-4" style="font-size:30px">Edite seu anuncio!</h4>
        
        </div>
        <div class="main">
          
            <table>
               
        
       
        <br>
        <br>
                <tr class="table table-hover">
                    <th  scope="col">Marca</th>
                    <th  scope="col">Modelo</th>
                    <th  scope="col" >Versão</th>
                    <th  scope="col" >Ano</th>
                    <th  scope="col" >KM</th>
                    <th  scope="col" >Preço</th>
                    <th  scope="col" >Codigo</th>

                </tr>
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");

                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");  
                        String email = (String) session.getAttribute("login");
                        PreparedStatement pstmt = null;
                        
                        pstmt = con.prepareStatement("select * from automovel where email_usuario LIKE ?");
                        pstmt.setString(1,"%" + email + "%");
                        ResultSet rs = pstmt.executeQuery();

                        while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getInt(7)%></td>

                    <td><a href="atualizar.jsp?edit=<%=rs.getInt(7)%> ">Atualizar</a></td>
                    <td><a href="?delete=<%=rs.getInt(7)%> ">Remover</a></td>

                </tr>
                <%
                        }

                    } catch (Exception e) {
                        out.println(e);
                    }

                %>

            </table>

        </div>


    </body>

</html>