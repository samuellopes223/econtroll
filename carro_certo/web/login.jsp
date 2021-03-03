<%
    if(session.getAttribute("login")!=null)
    {
        response.sendRedirect("tela_inicio.jsp"); 
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
		<title>Login</title>
		
	</head>

	<body>
		
		<header>
		<h1 class="Bem-vindo">Bem-vindo(a) ao portal Carro Certo!</h1>
		<style type="text/css"> 

			.Bem-vindo{
			padding-top: 17px;
			text-align: center;
			background-color: #EAEFF2;
			height: 90px;
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


						<div class="card" style="width: 18rem;">
  <div class="card-body">
    <form method="post" action="LoginController" name="LoginForm">
  <div class="form-group">
  	<h1>Faça login ou cadastre-se</h1>
    <label for="exampleInputEmail1">Endereço de email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Seu email" name="txt_email">
    <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguem.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Senha</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha" name="txt_senha">
    <small id="senhaHelp" class="form-text text-muted">Nunca compartilhe sua senha com ninguem!</small>
  </div>
 
  <button type="submit" class="btn btn-primary" id="btnlogin" name="btn_login">Login</button>
 
</form>            
            <h3 style="color:red">
                <%
                    if(request.getAttribute("LoginErro")!=null)
                    {
                        out.println(request.getAttribute("LoginErro"));
                    }
                %>
            </h3>
               <h3 style="color:green">
                <%
                    if(request.getAttribute("CadastroSucesso")!=null)
                    {
                        out.println(request.getAttribute("CadastroSucesso")); 
                    }
                %>
            </h3>
             <a href="cadastro.jsp"><button type="submit" class="btn btn-success" id="btncadastrese" name="btncadastro">Cadastre-se</button></a>
  </div>
</div>

						

					</div>

				</div>
				<style type="text/css">
					.row{
						width: 98%;

						

					}
					.col{
						margin-left: 38%;
						margin-top: 1em;
						margin-bottom: 1em;
					}
					#btnlogin{
						width: 100%;
					}
					#btncadastrese{
						width: 100%;
						margin-top: 1em;
					}


				</style>
			</section>

				<footer class="footer">
    		<style type="text/css">
    			.footer{
    	
    	width:97%;

			background-color: #EAEFF2;
			height: 60px;
			border-radius: 1.6em;
			margin-left: 1em;
			margin-right: 1em;
    			}

    		</style>
    	</footer>

	</body>
	</html>