

<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
       
           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Pessoas</title>
                
    </head>
    <body>
                <div class="container">
                <% try{
                if (request.getParameter("inserir")!=null){
                   Pessoa ins = new Pessoa();
                   ins.setNome(request.getParameter("nome"));
                   
                   int cpf = Integer.parseInt(request.getParameter("cpf"));
                   ins.setCpf(request.getParameter("cpf"));
                   
                   ins.setEmail(request.getParameter("email"));
                   
                   int telefone = Integer.parseInt(request.getParameter("telefone"));
                   ins.setTelefone(request.getParameter("telefone"));
                   
                   BD.getPessoa().add(ins);
                   response.sendRedirect("ListaPessoas.jsp");
                   }
                %>
        <div class="row">
            <div class="col-md-5">
                <h4>Cadastrar Pessoas</h4>

                <form action="CadastroPessoas.jsp" method="POST">
                <div class="form-group">
                    <label for="nome" class="font-weight-bold">Nome</label>
                    <input type="text" id="nome" name="nome" class="form-control">
                </div>
                <div class="form-group">
                    <label for="cpf" class="font-weight-bold">CPF</label>
                    <input type="text" id="cpf" name="cpf" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email" class="font-weight-bold">E-mail</label>
                    <input type="email" id="email" name="email" class="form-control">
                </div>
                 <div class="form-group">
                    <label for="telefone" class="font-weight-bold">Telefone</label>
                    <input type="text" id="telefone" name="telefone" class="form-control">
                </div>     
                
                    <input class="btn btn-dark" type="submit" name="inserir" value="Inserir"/>
                <a href="ListaPessoas.jsp" class="btn btn-outline-secondary" title="Voltar para a lista de contatos.">Lista</a>
               <br><br> </form>
                </div>
            
                <div class="col-md-7">
                    <center>
                <img width="500px" height="350px"   src="imagem/pessoas.png"/>
                    </center>
               </div>
            
        </div>
        </div>
        <%}catch(Exception ex){%>
        <h5 style="color:red"><b>Valores incorretos! Tente Novamente.</b></h5><br>
        <%}%>
    </body>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
   
</html>
