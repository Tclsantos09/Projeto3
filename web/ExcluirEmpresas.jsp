<%-- 
    Document   : ExcluirEmpresas
    Created on : 15/10/2018, 11:51:20
    Author     : thais.lopes
--%>

<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
        <style>
            body{
                padding-bottom:100px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2 align="center">Confirmar Exclusão</h2>
        
        <%
            int i = Integer.parseInt(request.getParameter("id"));
            Empresa p = BD.getEmpresa().get(i);
            if (request.getParameter("excluir")!=null){
                BD.getEmpresa().remove(i);
                response.sendRedirect("CadastroEmpresas.jsp");
            }
        %>
                
        <form id="<%=i%>">
            <div align="center">
                ID<br> <input  type="text" name="id" value="<%= i%>"><br>
                <input  type="hidden" name="i" value="<%= i%>">   
                Nome:<br> <%= p.getNome()%><br>
                Razão Social:<br> <%= p.getRazaoSocial()%><br>
                CNPJ:<br> <%= p.getCnpj()%><br>
                Telefone: <br> <%= p.getTelefone()%><br>
                Website: <br> <%= p.getWebsite()%><br><br>
                <button name="excluir">Excluir</button>
                <button><a href="CadastroEmpresas.jsp">Voltar</a></button>
            </div>
        </form>
    </body>
    
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
