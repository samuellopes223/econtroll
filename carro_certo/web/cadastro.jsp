<%
if(session.getAttribute("login")!=null)
{
response.sendRedirect("cadastro.jsp");
}
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
        <title>Cadastro</title>

    </head>

    <body>

        <header>
            <h1 class="Bem-vindo">Bem-vindo(a) ao portal Carro Certo!</h1>
            <style type="text/css"> 

                .Bem-vindo{
                    padding-top: 6px;
                    text-align: center;
                    background-color: #EAEFF2;
                    height: 60px;
                    border-radius: 0.3em;
                    margin-left: 1em;
                    margin-right: 1em;
                    font-family: verdana;
                } 

            </style>
        </header>

        <section>
            <div class="row">

                <div class="col">
                    <form method="post" action="RegisterController">
                        <h1 class="titulo">Cadastre-se</h1>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNome">Nome</label>
                                <input type="name" class="form-control" id="inputNome" placeholder="Seu nome completo" name="txt_nome" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Telefone</label>
                                <input type="text" class="form-control" id="inputTelefone" placeholder="Seu numero de celular com o DDD" name="txt_telefone" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="txt_email" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">CPF</label>
                                <input type="text" class="form-control" id="inputCPF" placeholder="Informe seu CPF, somente nÃºmeros" name="txt_cpf" required>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="Senha">Digite uma senha</label>
                            <input type="password" class="form-control" id="inputSenha" placeholder="Digite sua senha" name="txt_senha" required>
                            <label for="Senha">Confirme sua senha</label>
                            <input type="password" class="form-control" id="inputSenhaConfirmacao" placeholder="Confirme sua senha" required>
                            <label for="inputAddress">Endereço</label>
                            <input type="text" class="form-control" id="inputAddress" placeholder="Rua da Paixão, nº 15" name="txt_endereco" required>

                        </div>
                        <div class="form-group">

                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">Cidade</label>
                                <input type="text" class="form-control" id="inputCity" placeholder="Brasilia" name="txt_cidade" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputEstado">Estado</label>
                                <select id="inputEstado" class="form-control" name="txt_estado" required>
                                    <option selected>Escolher...</option>
                                    <option>Acre - (AC)</option>
                                    <option>Alagoas - (AL)</option>
                                    <option>Amapa - (AP)</option>
                                    <option>Amazonas - (AM)</option>
                                    <option>Bahia - (BA)</option>
                                    <option>Ceara - (CE)</option>
                                    <option>Distrito Federal - (DF)</option>
                                    <option>Espito Santo - (ES)</option>
                                    <option>Goias - (GO)</option>
                                    <option>Maranhão - (MA)</option>
                                    <option>Mato Grosso - (MT)</option>
                                    <option>Mato Grosso do Sul - (MS)</option>
                                    <option>Minas Gerais - (MG)</option>
                                    <option>Para - (PA)</option>
                                    <option>Paraiba - (PB)</option>
                                    <option>Paranã - (PR)</option>
                                    <option>Pernambuco - (PE)</option>
                                    <option>Piaui­ - (PI)</option>
                                    <option>Rio de Janeiro - (RJ)</option>
                                    <option>Rio Grande do Norte - (RN)</option>
                                    <option>Rio Grande do Sul - (RS)</option>
                                    <option>Rondonia - (RO)</option>
                                    <option>Roraima - (RR)</option>
                                    <option>Santa Catarina - (SC)</option>
                                    <option>São Paulo - (SP)</option>
                                    <option>Sergipe - (SE)</option>
                                    <option>Tocantins - (TO)</option>


                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputCEP">CEP</label>
                                <input type="text" class="form-control" id="inputCEP" name="txt_cep" required>
                            </div>



                        </div>
                        <div class="form-group">
                            <div class="form-check">

                            </div>
                        </div>

                        <button type="submit" class="btn btn-success" id="btncadastrar" name="btn_cadastrar">Cadastrar</button>

                    </form>
                    <h3 style="color:red">
                        <%
                        if(request.getAttribute("CadastroErro")!=null)
                        {
                        out.println(request.getAttribute("CadastroErro")); 
                        }
                        %>
                    </h3>

                </div>
            </div>

            <style type="text/css">
                .cadastro{
                    width: 100%;
                    margin-left: 1em;
                    margin-right: 1em;
                }
                #btncadastrar{
                    width: 98%;
                    margin-left: 1em;
                    margin-right: 1em;
                }
                .row{
                    width: 98%;
                }
                .titulo{
                    text-align: center;
                    color: gray;


                }
            </style>
            <script type="text/javascript">
                $("#inputCEP").mask("00.000-000");
                $("#inputTelefone").mask("(00) 0 0000-0000");
                $("#inputCPF").mask("000.000.000-00");
            </script>

        </section>

        <footer class="footer">
            <style type="text/css">
                .footer{

                    width:97%;

                    background-color: #EAEFF2;
                    height: 30px;
                    border-radius: 1.6em;
                    margin-left: 1em;
                    margin-right: 1em;
                    margin-top: 1em;
                }

            </style>
        </footer>

    </body>
</html>