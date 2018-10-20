<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
        
    </head>
    <body><div class="container"
               <h4>Confirmar Exclusão</h4>
        
        <%
            int i = Integer.parseInt(request.getParameter("id"));
            Empresa p = BD.getEmpresa().get(i);
            if (request.getParameter("excluir")!=null){
                BD.getEmpresa().remove(i);
                response.sendRedirect("CadastroEmpresas.jsp");
            }
        %>
                
          <form id="<%=i%>">
                   <div class="form-group col-md-5">
                ID <input  type="text" class="form-control" name="id" value="<%= i%>">   
                Nome <input  type="text" class="form-control" name="nome" value="<%= p.getNome()%>">
                Razão Social<input  type="text" class="form-control" name="nome" value=" <%= p.getRazaoSocial()%>">
                CNPJ<input  type="text" class="form-control" name="nome" value="<%= p.getCnpj()%>">
                Telefone<input  type="text" class="form-control" name="nome" value="<%= p.getTelefone()%>">
                Website<input  type="text" class="form-control" name="nome" value="<%= p.getWebsite()%>"><br>
                <button name="excluir" class="btn btn-danger">Excluir</button>
                <button name="voltar" class="btn" ><a href="ListaEmpresas.jsp" >Voltar</a></button>
            </div>
        </form>
                </div>
    </body>
</html>