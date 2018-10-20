
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
    </head>
    <body><div class="container">
                <h4>Confirmar Exclusão</h4>
                
                <%
                
                    int i = Integer.parseInt(request.getParameter("id"));
                    Pessoa p = BD.getPessoa().get(i);
                    if (request.getParameter("excluir")!=null){
                  
                        BD.getPessoa().remove(i);
                        response.sendRedirect("CadastroPessoas.jsp");

                    }

                %>
                
                <form id="<%=i%>">
                   <div class="form-group col-md-5">
                    ID <input  type="text" class="form-control" name="id" value="<%= i%>">  
                    Nome <input  type="text" class="form-control" name="nome" value="<%= BD.getPessoa().get(i).getNome()%>"> 
                    CPF<input  type="text" class="form-control" name="cpf" value="<%= BD.getPessoa().get(i).getCpf()%>">
                    Email:<input  type="text" class="form-control" name="email" value="<%= BD.getPessoa().get(i).getEmail()%>">
                    Telefone:<input  type="text" class="form-control" name="telefone" value="<%= BD.getPessoa().get(i).getTelefone()%>"><br>
                    <button name="excluir" class="btn btn-danger">Excluir</button>
                    <button name="voltar" class="btn" ><a href="ListaPessoas.jsp" >Voltar</a></button>
                    
                </form>
        </div>         
    </body>
    
</html>
