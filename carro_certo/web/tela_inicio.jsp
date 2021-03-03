 <%
            if (session.getAttribute("login") == null || session.getAttribute("login") == "") {
                response.sendRedirect("login.jsp");
            }
        %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>Carro Certo - Bem Vindo!</title>
    <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <style>

  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style>
  </head>
  <body>
    <nav class="navq1">
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
   

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <link href="navbar-top-fixed.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
              <li class="nav-item">
              <a href="cadastroveiculo.jsp"><button class="btn btn-outline-warning" type="submit" >Anuncie</button></a>
              <a href="editaranuncio.jsp"><button class="btn btn-outline-success" type="submit">Meus Anuncios</button></a>
                       
            </li>
          </li>
           
        </ul>
         
          <a href="desconectar.jsp"><button class="btn btn-outline-danger" type="submit">Sair</button></a>
         
      
          
      </div>
    </nav>
      
      <div class="row">
      <div class="col">
          <div class="card" style="width: 60rem;">

  <div class="card-body">

<div class="row">
   <div class="col">
       <center><h2 class="display-4">Bem-Vindo!</h2></center>
       <center><p class="h5"><%=session.getAttribute("login")%></p></center>
       <br>
    <h5 class="card-title">Encontre seu próximo carro!</h5>
    
  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="midia/Carrossel/a31.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a32.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a33.jpg" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
       
       
       
       
    
    </div>
      
     

    
    
   
      </div>
  
<form>
 
      <div class="row">
      <div class="col">
          <p>Audi</p>
        
          </div>
          <div class="col">
          <p>A3 Sedan</p>
          </div>
            <div class="col">
          <p>Prestige</p>
          </div>
      
      </div>
    
    <div class="row">
      <div class="col">
          <p>2021</p>
          </div>
          <div class="col">
          <p>0 KM</p>
          </div>
          <div class="col">
          <p>149.990R$</p>
          </div>
    
    
    </div>

  
</form>

    <a href="pagar.jsp" class="btn btn-primary" id="btnComprar">Comprar</a>
  </div>
</div>
          
          
          
          
          </div>
      
      
      
      
      </div>
      
      
      
        <div class="row">
      <div class="col">
          <div class="card" style="width: 60rem;">

  <div class="card-body">
    <h5 class="card-title">Encontre seu próximo carro!</h5>

<div class="row">
   <div class="col">
    
    
    
  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="midia/Carrossel/a31.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a32.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a33.jpg" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
       
       
       
       
    
    </div>
      
     

    
    
   
      </div>
  
<form>
 
      <div class="row">
      <div class="col">
          <p>Audi</p>
        
          </div>
          <div class="col">
          <p>A3 Sedan</p>
          </div>
            <div class="col">
          <p>Ambiente</p>
          </div>
      
      </div>
    
    <div class="row">
      <div class="col">
          <p>2018</p>
          </div>
          <div class="col">
          <p>32.870 KM</p>
          </div>
          <div class="col">
          <p>104.990R$</p>
          </div>
    
    
    </div>

  
</form>

    <a href="pagar.jsp" class="btn btn-primary" id="btnComprar">Comprar</a>
  </div>
</div>
          
          
          
          
          </div>
      
      
      
      
      </div>
      
      
        <div class="row">
      <div class="col">
          <div class="card" style="width: 60rem;">

  <div class="card-body">
    <h5 class="card-title">Encontre seu próximo carro!</h5>

<div class="row">
   <div class="col">
    
    
    
  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="midia/Carrossel/a31.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a32.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="midia/Carrossel/a33.jpg" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
       
       
       
       
    
    </div>
      
     

    
    
   
      </div>
  
<form>
 
      <div class="row">
      <div class="col">
          <p>Audi</p>
        
          </div>
          <div class="col">
          <p>A3 Sedan</p>
          </div>
            <div class="col">
          <p>Attraction</p>
          </div>
      
      </div>
    
    <div class="row">
      <div class="col">
          <p>2015</p>
          </div>
          <div class="col">
          <p>90.280 KM</p>
          </div>
          <div class="col">
          <p>69.990R$</p>
          </div>
    
    
    </div>

  
</form>

    <a href="pagar.jsp" class="btn btn-primary" id="btnComprar">Comprar</a>
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
            margin-bottom: 4em;
        }
        .card{
          box-shadow: 1em 1em 1em gray;
          border-radius: 1em;
        }
                select{
                    margin-bottom: 1em;
                }
                #btnComprar{
                    margin-top: 1em;
                    width: 100%;
                }
                .card{
                    margin: auto;
                }
                h5{
                    text-align: center;
                    color: darkgray;
                }
                .card p{
                    font-weight: bolder;
                    margin-top: 1em;
                }
    		</style>
        
    	</footer>

  </body>
</html>