<%-- 
    Document   : AlterarEmpresa
    Created on : 15/10/2018, 11:50:27
    Author     : thais.lopes
--%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Alteração</title>
        <style>
            body{
                padding-bottom:100px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2 align="center">Confirmar Alteração</h2>
        
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
            <div align="center">
                ID<br> <input type="text" name="id" value="<%= i%>"><br>
                Nome:<br> <input type="text" name="nome" value="<%= BD.getEmpresa().get(i).getNome()%>"><br>
                Razão Social:<br> <input type="text" name="razaoSocial" value="<%= BD.getEmpresa().get(i).getRazaoSocial()%>"><br>
                CNPJ:<br> <input type="text" name="cnpj" value="<%= BD.getEmpresa().get(i).getCnpj()%>"><br>
                Telefone: <br><input type="text" name="telefone" value="<%= BD.getEmpresa().get(i).getTelefone()%>"><br>
                Website: <br><input type="text" name="website" value="<%= BD.getEmpresa().get(i).getWebsite()%>"><br><br>
                <button name="alterar">Alterar</button>
            </div>
        </form>  
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>


      