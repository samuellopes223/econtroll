        <%
            if (session.getAttribute("login") == null || session.getAttribute("login") == "") {
                response.sendRedirect("login.jsp");
            }
        %>

<%@ page import="java.sql.*" %>  

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carro_certo", "root", "");

        if (request.getParameter("btn_anuncie") != null) {
            String modelo, marca, versao, preco, km, ano;
            String email = (String) session.getAttribute("login");
            modelo = request.getParameter("txt_modelo");
            marca = request.getParameter("txt_marca");
            versao = request.getParameter("txt_versao");
            preco = request.getParameter("txt_preco");
            km = request.getParameter("txt_km");
            ano = request.getParameter("txt_ano");
            PreparedStatement pstmt = null;

            pstmt = con.prepareStatement("insert into automovel(modelo,marca,versao,preco,km,ano,email_usuario)values(?,?,?,?,?,?,?)");
            pstmt.setString(1, modelo);
            pstmt.setString(2, marca);
            pstmt.setString(3, versao);
            pstmt.setString(4, preco);
            pstmt.setString(5, km);
            pstmt.setString(6, ano);
            pstmt.setString(7, email);
            pstmt.executeUpdate();

            con.close();
            out.println("Venda anunciada com sucesso!");

        }

    } catch (Exception e) {
        out.println(e);
    }
    

%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Vender - Carro Certo</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </head>
    <body>
        <nav class="navq1">
            <a href="tela_inicio.jsp" ><p class="anav">Voltar</p></a>	
            <h1 class="h1nav">Carro Certo</h1>

            <style type="text/css">

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
        </nav>
        <div class="row">
            <div class="col">
                <div class="card" style="width: 28rem;">

                    <div class="card-body">

                        <h5 class="card-title">Anucie seu carro!</h5>

                        <form method="post" name="myform"  onsubmit="return">
                            <select class="form-control form-control-sm" name="txt_marca">
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

                            <select class="form-control form-control-sm" name="txt_modelo">
                                <option>Modelo</option>
                                <option>Compass</option>
                                <option>Renegade</option>

                            </select>
                            <select class="form-control form-control-sm" name="txt_versao">
                                <option>Versão</option>
                                <option>Longitude</option>
                                <option>Limited</option>

                            </select>
                            <div class="form-group">

                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Ano" name="txt_ano">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="KM" name="txt_km">
                            </div>


                            <div class="form-group">
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Preço" name="txt_preco">
                            </div>
                            <p>Faça upload das fotos para seu anuncio!</p>
                            <input type="file" name="UploadFotos"/>
                            <br>
                            <br>
                            <center><input type="submit" class="btn btn-primary" name="btn_anuncie" value="Anunciar"></center>

                        </form>
                    </div>
                </div>




            </div>




        </div>






        <footer class="footer">
            <style type="text/css">
                .footer{

                    bottom:0;
                    width:97%;

                    background-color: #EAEFF2;
                    height: 60px;
                    border-radius: 1.6em;
                    margin-left: 1em;
                    margin-right: 1em;
                }
                .row{
                    width: 98%;
                }
                .col{
                    margin-left: 8em;
                }
                .card{
                    box-shadow: 1em 1em 1em gray;
                    border-radius: 1em;
                }
                select{
                    margin-bottom: 1em;
                }
                #btnanunciar{
                    margin-top: 1em;
                }
                .card{
                    margin: auto;
                }
            </style>

        </footer>

    </body>
</html>
