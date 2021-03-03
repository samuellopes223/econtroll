<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Comprar - Carro Certo</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

    </head>
    <body>
    <nav class="navq1">

        <h1 class="h1nav">Carro Certo</h1>

        <style type="text/css">

            .h1nav{
                text-align: center;
                font-family: verdana;
            }

            .navq1{

                text-align: center;
                background-color: #EAEFF2;
                height: 60px;
                border-radius: 1.6em;
                margin-left: 1em;
                margin-right: 1em;

            }

        </style>
    </nav>








    <div class="row">






        <div class="col">








            <div class="card" style="width: 25rem;">

                <div class="card-body">
                    <h5 class="card-title">Dados enviados!</h5>
                    <p id="p1">Seus dados foram enviados para a financeira escolhida!</p>
                    <p id="pt">Agora você deve aguardar a resposta deles, se tiver sido aprovada, o seu veículo será entregue no endereço informado.</p>
                    <p id="p2">Você será informado de cada passo.</p>
                    <p id="p3">Obrigado pela preferência!</p>

                    <img src="midia/logo hp/confirma.png">


                </div>



                <a href="index.html" class="btn btn-primary" id="btnanunciar">Voltar à homepage</a>

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
                width: 100%;
                background-color: yellowgreen;
                margin-bottom: 1em;
            }
            .card{
                margin: auto;
                margin-top: 1%;
            }
            input{
                margin-bottom: 0.3em;
            }
            h5{
                color: greenyellow;
                font-weight: bolder;
                text-align: center;
            }
            #p1, #p2{
                font-weight: bolder;
            }
            img{
                margin-left: 4em;
            }
            #p3{
                text-align: center;
            }
            #pt{
                text-indent: 2em;
            }
        </style>

    </footer>

</body>
</html>