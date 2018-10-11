<%-- 
    Document   : lista
    Created on : 11/10/2018, 14:14:12
    Author     : thais.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista</title>
        <style>
            body{
                padding-bottom:100px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Lista</h1><br>
        <a href="incluir.jsp"><button>Incluir</button></a> <br>
        
        <a href="excluir.jsp"><button>Excluir</button></a> <br>
        <a href="alterar.jsp"><button>Alterar</button></a> <br>
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>