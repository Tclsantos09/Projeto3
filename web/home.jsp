<%-- 
    Document   : home
    Created on : 15/10/2018, 11:33:11
    Author     : thais.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            body{
                padding-bottom:100px;
             }
         </style>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
         <div align="center">
            <h2> Cadastro </h2>
            <p> Projeto elaborado para cadastro de Pessoas, Empresas e Veiculos.</p>
            <h3>Equipe de desenvolvimento</h3>
            <h4>Baden Damasio</h4><h4>Diogo Rodrigues</h4><h4>Jefferson Rodrigues</h4><h4>Thaís Lopes</h4><h4>Weslley Antonio</h4>
        </div>
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
     </div>
</html>