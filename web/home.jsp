<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
    </head>
   
        <body>

            <h2 class="text-center">POO - Projeto 04</h2>
            <p class="text-center">Este projeto simula um cadastro de pessoas, empresas e veículos, utilizando-se de páginas JSP e classes Java para simular um banco de dados na memória.</p>
            <hr><br><br>
                    <div class="container">

            <div class="row">
               
                <div class="col-sm-1"></div>
                <div class="col-sm-2 card" style="width: 12rem;">
                    <div class="card-body"><br>
                        <h5 class="text-center card-title">Integrantes</h5><br>
                        <h6> <p class="text-center card-text">Baden</p>
                        <p class="text-center card-text">Diogo</p>
                        <p class="text-center card-text">Jefferson</p>
                        <p class="text-center card-text">Thaís</p>
                        <p class="text-center card-text">Weslley</p></h6>

                    </div>
                </div>
                
                                <div class="col-sm-3 card" style="width: 12rem;">
                    <div class="card-body">
                        <h3 class="text-center card-title">Cadastro de Pessoas</h3>
                        <p class="text-center card-text">Ir para a página de cadastro e gerenciamento de pessoas.</p>
                        <a class="col-sm-12 text-center btn btn-dark" href="CadastroPessoas.jsp">Gerenciar Pessoas</a>
                    </div>
                </div>
         
                
                <div class="col-sm-3 card" style="width: 12rem;">
                    <div class="card-body">
                        <h3 class="text-center card-title">Cadastro de Empresas</h3>
                        <p class="text-center card-text">Ir para a página de cadastro e gerenciamento de empresas.</p>
                        <a class="col-sm-12 text-center btn btn-dark" href="CadastroEmpresas.jsp">Gerenciar Empresas</a>
                    </div>
                </div>
                
                <div class="col-sm-3 card" style="width: 12rem;">
                    <div class="card-body">
                        <h3 class="text-center card-title">Cadastro de Veículos</h3>
                        <p class="text-center card-text">Ir para a página de cadastro e gerenciamento de veículos.</p>
                        <a class="col-sm-12 text-center btn btn-dark" href="CadastroEmpresas.jsp">Gerenciar Veículos</a>
                    </div>
                </div>                  
            </div></div>
            
            <br><br>
                 
    </body>    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
     </div>
</html>