<%@ page import="java.sql.*" %>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");

        if (request.getParameter("btn_anuncie") != null) {
            int cod;
            String modelo, marca, versao, preco, km, ano;
            modelo = request.getParameter("txt_modelo");
            marca = request.getParameter("txt_marca");
            versao = request.getParameter("txt_versao");
            preco = request.getParameter("txt_preco");
            km = request.getParameter("txt_km");
            ano = request.getParameter("txt_ano");
            cod = Integer.parseInt(request.getParameter("txt_hide"));

            PreparedStatement pstmt = null;

            pstmt = con.prepareStatement("update automovel set modelo=?, marca=?, versao=?, preco=?, km=?, ano=? where Id_automovel=?");
            pstmt.setString(1, modelo);
            pstmt.setString(2, marca);
            pstmt.setString(3, versao);
            pstmt.setString(4, preco);
            pstmt.setString(5, km);
            pstmt.setString(6, ano);
            pstmt.setInt(7, cod);

            pstmt.executeUpdate();

            con.close();

            out.println("Atualizado com Sucesso!");
        }

    } catch (Exception e) {
        out.println(e);
    }

%>

<html>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <head>

        <title> Carro Certo - Excluir, Atualizar </title>


        <style type="text/css">

            .main
            {
                width:700px;;
                margin-left:250px;
                padding: 10px;
                border: 5px solid grey;

            }
            table
            {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 600px;
            }
            td
            {
                border: 5px solid silver;
                text-align: left;
                padding: 8px;
            }
            .h1nav{
                text-align: center;
                font-family: verdana;
            }
            .anav{
                text-align: left;
                font-size: 0.8em;
                font-family: arial;
                padding-left: 1.2em;
            }
            .navq1{

                text-align: center;
                background-color: #EAEFF2;
                height: 100px;
                border-radius: 1.6em;
                margin-left: 1em;
                margin-right: 1em;

            }

        </style>	
    </head>

    <body>

        <div class="main">

            <form method="post" name="myform">

                <%                       try {
                        Class.forName("com.mysql.jdbc.Driver");

                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");

                        if (request.getParameter("edit") != null) {
                            int cod = Integer.parseInt(request.getParameter("edit"));

                            String modelo, marca, versao, preco, km, ano;

                            PreparedStatement pstmt = null;

                            pstmt = con.prepareStatement("select * from automovel where id_automovel=?");
                            pstmt.setInt(1, cod);
                            ResultSet rs = pstmt.executeQuery();

                            while (rs.next()) {
                                modelo = rs.getString(1);
                                marca = rs.getString(2);
                                versao = rs.getString(3);
                                ano = rs.getString(4);
                                km = rs.getString(5);
                                preco = rs.getString(6);
                                cod = rs.getInt(7);
                %>
                <a href="editaranuncio.jsp"><p class="anav">Voltar</p></a>
                <div class="row">
                    <div class="col">
                        <div class="card" style="width: 28rem;">

                            <div class="card-body">

                                <h5 class="card-title">Editar Dados</h5>

                                <form method="post" name="myform">
                                    <select class="form-control form-control-sm" name="txt_marca" <%=marca%>>
                                        <option>Marca</option>
                                        <option>Audi</option>
                                        <option>BMW</option>
                                        <option>Chevrolet</option>
                                        <option>Citroen</option>
                                        <option>Fiat</option>
                                        <option>Ford</option>
                                        <option>Jeep</option>
                                        <option>Honda</option>
                                        <option>Hyundai</option>
                                        <option>Mercedes-Benz</option>
                                        <option>Nissan</option>
                                        <option>Renault</option>
                                        <option>Volkswagen</option>
                                    </select>

                                    <select class="form-control form-control-sm" name="txt_modelo" value="<%=modelo%>">
                                        <option>Modelo</option>
                                        <option>Compass</option>
                                        <option>Renegade</option>

                                    </select>
                                    <select class="form-control form-control-sm" name="txt_versao" value="<%=versao%>">
                                        <option>Versão</option>
                                        <option>Longitude</option>
                                        <option>Limited</option>

                                    </select>
                                    <div class="form-group">

                                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Ano" name="txt_ano" value="<%=ano%>" required>
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="KM" name="txt_km" value="<%=km%>" required>
                                    </div>


                                    <div class="form-group">
                                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Preço" name="txt_preco" value="<%=preco%>" required>
                                    </div>
                                    <p>Faça upload das fotos para seu anuncio!</p>
                                    <input type="file" name="UploadFotos"/>
                                    <br>
                                    <br>
                                    <center><input type="submit" class="btn btn-primary" name="btn_anuncie" value="Anunciar"></center>
                                    <input type="hidden" name="txt_hide" value="<%=cod%>">
                                </form>
                                <%
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                %>	
                                </table>


                                </form>

                            </div>

                            </body>

                            </html>