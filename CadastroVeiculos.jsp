<%-- 
    Document   : CadastroVeiculos
    Created on : 11/10/2018, 14:20:14
    Author     : thais.lopes e Jefferson Rodrigues
--%>

<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Veículos</title>
        <style>
            body{
                padding-bottom:100px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Cadastrar Veículos</h2>
        
        <%
            if (request.getParameter("inserir")!=null){
                Veiculo veiculo = new Veiculo();
                
                veiculo.setMarca(request.getParameter("marca"));
                veiculo.setModelo(request.getParameter("modelo"));
                veiculo.setCor(request.getParameter("cor"));
                veiculo.setPlaca(request.getParameter("placa"));
                   
                BD.getVeiculo().add(veiculo);
                response.sendRedirect(request.getRequestURI());
            }
                
        %>
                
        <form >
            Marca:<br> <input  type="text" name="marca"/>  <br>
            Modelo:<br> <input  type="text" name="modelo"/>  <br>
            Cor: <br><input  type="text" name="cor"/>  <br>
            Placa: <br><input  type="text" name="placa"/>  <br><br>
            <input type="submit" name="inserir" value="inserir"/>
        </form><hr>
                
        <table border="1" style="margin: 5px">
            <tr>
                <th>Id</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Comandos</th>
            </tr>  
            <%for (int i = 0; i < BD.getVeiculo().size(); i++) {%>
                <tr>
                    <td><%=i%></td>
                    <td><%=BD.getVeiculo().get(i).getMarca()%></td>
                    <td><%=BD.getVeiculo().get(i).getModelo()%></td>
                    <td><%=BD.getVeiculo().get(i).getCor()%></td>
                    <td><%=BD.getVeiculo().get(i).getPlaca()%></td>
                    <td>
                        <a href="AlterarVeiculos.jsp?id=<%=i%>"> <button name="alterar">Alterar</button></a>
                        <a href="ExcluirVeiculos.jsp?id=<%=i%>"> <button>Excluir</button></a>
                    </td>
                </tr>
             <%}%>
        </table>
            
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
