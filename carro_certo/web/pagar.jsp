<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Comprar - Carro Certo</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
        <script type="text/javascript">
            $("#cep").mask("00.000-000");
            $("#telefone").mask("(00) 0 0000-0000");
            $("#cpf").mask("000.000.000-00");
        </script>
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


                <div class="row">
                    <div class="col">
                        <div class="card" style="width: 25rem;">

                            <div class="card-body">
                                <h5 class="card-title">Preencha com seus dados</h5>
                                <div class="form-group">
                                    <form action="EmailSendingServlet" method="post">
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Nome Completo" name="txt_nome">
                                            <input type="text" class="form-control" id="cpf" placeholder="CPF" name="txt_cpf" required>
                                            <input type="text" class="form-control" id="telefone" placeholder="Telefone" name="txt_telefone">
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="E-mail" name="txt_email" >
                                            <input type="text" class="form-control" id="cep" placeholder="Cep" name="txt_cep">
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Endereço"name="txt_endereco">
                                            <select id="inputEstado" class="form-control" name="txt_estado">
                                                <option selected>UF</option>
                                                <option>Acre - (AC)</option>
                                                <option>Alagoas - (AL)</option>
                                                <option>Amapá - (AP)</option>
                                                <option>Amazonas - (AM)</option>
                                                <option>Bahia - (BA)</option>
                                                <option>Ceará - (CE)</option>
                                                <option>Distrito Federal - (DF)</option>
                                                <option>Espírito Santo - (ES)</option>
                                                <option>Goiás - (GO)</option>
                                                <option>Maranhão - (MA)</option>
                                                <option>Mato Grosso - (MT)</option>
                                                <option>Mato Grosso do Sul - (MS)</option>
                                                <option>Minas Gerais - (MG)</option>
                                                <option>Pará - (PA)</option>
                                                <option>Paraíba - (PB)</option>
                                                <option>Paraná - (PR)</option>
                                                <option>Pernambuco - (PE)</option>
                                                <option>Piauí - (PI)</option>
                                                <option>Rio de Janeiro - (RJ)</option>
                                                <option>Rio Grande do Norte - (RN)</option>
                                                <option>Rio Grande do Sul - (RS)</option>
                                                <option>Rondônia - (RO)</option>
                                                <option>Roraima - (RR)</option>
                                                <option>Santa Catarina - (SC)</option>
                                                <option>São Paulo - (SP)</option>
                                                <option>Sergipe - (SE)</option>
                                                <option>Tocantins - (TO)</option>


                                            </select>
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Cidade" name="txt_cidade">
                                            <p>Esses dados serão enviados para a financeira para análise.</p>


                                            </div>

                                            <div class="form-group">


                                            </div>



                                            </div>
                                            </div>




                                            </div>




                                            </div>




                                            </div>




                                            <div class="col">








                                                <div class="card" style="width: 25rem;">

                                                    <div class="card-body">
                                                        <h5 class="card-title">Já é quase seu...</h5>
                                                        <select class="form-control form-control-sm" name="txt_banco">
                                                            <option>Escolha uma financeira...</option>
                                                            <option>Itaú</option>
                                                            <option>Caixa</option>
                                                            <option>Alpha</option>
                                                            <option>BRB</option>
                                                            <option>Banco do Brasil</option>

                                                        </select>





                                                        <div class="form-group">

                                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Entrada" name="txt_entrada">
                                                        </div>

                                                        <div class="form-group">

                                                            <select class="form-control form-control-sm" name="txt_parcelas">
                                                                <option>Parcelas</option>
                                                                <option>0 - à vista</option>
                                                                <option>12X</option>
                                                                <option>24X</option>
                                                                <option>36X</option>
                                                                <option>48X</option>
                                                                <option>60X</option>
                                                                <option>72X</option>
                                                                <option>84X</option>
                                                                <option>96X</option>

                                                            </select>
                                                        </div>



                                                        <p>Faça upload do seu contra-cheque</p>
                                                        <input type="file" name="UploadFotos"/>



                                                        <input type="submit" class="btn btn-primary" value="Comprar" name="btncomprar"/>
                                                        </form>
                                                        </form>
                                                        <p>Atenção, este processo não garante a compra: Nós iremos enviar seus dados para a financeira, entretanto é necessário que eles aprovem a proposta
                                                            para que sua compra seja concluída.</p>

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
                                                        position: fixed;
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
                                                        width: 100%;
                                                    }
                                                    .card{
                                                        margin: auto;
                                                        margin-top: 1%;
                                                    }
                                                    input{
                                                        margin-bottom: 0.3em;
                                                    }
                                                </style>

                                            </footer>

                                            </body>
                                            </html>
