<%-- 
    Document   : AlterarVeiculos
    Created on : 15/10/2018, 11:50:45
    Author     : thais.lopes e Jefferson Rodrigues
--%>

<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Alteração</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Confirmar Alteração de Veículo</h2>
        
        <%
            int i = Integer.parseInt(request.getParameter("id"));
            if (request.getParameter("alterar")!=null){
                Veiculo altv = new Veiculo();
                altv.setMarca(request.getParameter("marca"));
                altv.setModelo(request.getParameter("modelo"));
                altv.setCor(request.getParameter("cor"));
                altv.setPlaca(request.getParameter("placa"));
               
                BD.getVeiculo().set(i, altv);
                response.sendRedirect("CadastroVeiculos.jsp");
            }
        %>
                
        <form id="<%=i%>">
            ID<br> <input  type="text" name="id" value="<%= i%>">  <br>

            Marca:<br> <input  type="text" name="marca" value="<%= BD.getVeiculo().get(i).getMarca()%>">  <br>
            Modelo:<br> <input  type="text" name="modelo" value="<%= BD.getVeiculo().get(i).getModelo()%>">  <br>
            Cor: <br><input  type="text" name="cor" value="<%= BD.getVeiculo().get(i).getCor()%>">  <br>
            Placa: <br><input  type="text" name="placa" value="<%= BD.getVeiculo().get(i).getPlaca()%>">  <br><br>
            <button name="alterar">Alterar</button>
            <button><a href="CadastroVeiculos.jsp">Cancelar</a></button>

        </form>        
        
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
