<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html>
    <head>
        
                <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Alteração</title>
        
    </head>
    <body><div class="container">
        <h4>Confirmar Alteração</h4>
        
        <%

               int i = Integer.parseInt(request.getParameter("id"));
               if (request.getParameter("alterar")!=null){
               Empresa alt = new Empresa();
               alt.setNome(request.getParameter("nome"));
               alt.setRazaoSocial(request.getParameter("razaoSocial"));
               alt.setCnpj(request.getParameter("cnpj"));
               alt.setTelefone(request.getParameter("telefone"));
               alt.setWebsite(request.getParameter("website"));
               
               BD.getEmpresa().set(i, alt);
               response.sendRedirect("CadastroEmpresas.jsp");
               }
        %>
                
        <form id="<%=i%>">
            <div class="form-group col-md-5">
                ID<input type="text" class="form-control" name="id" value="<%= i%>">
                Nome<input type="text" class="form-control" name="nome" value="<%= BD.getEmpresa().get(i).getNome()%>">
                Razão Social<input type="text" class="form-control" name="razaoSocial" value="<%= BD.getEmpresa().get(i).getRazaoSocial()%>">
                CNPJ<input type="text" class="form-control" name="cnpj" value="<%= BD.getEmpresa().get(i).getCnpj()%>">
                Telefone<input type="text" class="form-control" name="telefone" value="<%= BD.getEmpresa().get(i).getTelefone()%>">
                Website<input type="text" class="form-control" name="website" value="<%= BD.getEmpresa().get(i).getWebsite()%>"><br>
                <button name="alterar" class="btn btn-primary" style="z-index:">Alterar</button>
                <button name="voltar" class="btn" ><a href="ListaEmpresas.jsp" >Voltar</a></button>
            
            </div>
        </form>  
        </div>
    </body>
    
</html> 