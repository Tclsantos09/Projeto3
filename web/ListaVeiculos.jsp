<%-- 
    Document   : ListaVeiculos
    Created on : 20/10/2018, 04:53:24
    Author     : Weslley
--%>

<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Veiculo</title>
    </head>
    <body>
        <h1>Lista Veiculos</h1>
        <button class="btn btn-alert"><a href="CadastroVeiculos.jsp">Novo Cadastro</a></button><br><br>

                <table class="table table-hover">

                  <thead class = "thead-light ">
                    <tr>
                        <th>Id</th>
                    <th scope="col">Cor</th></th>
                    <th scope="col">Marca</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">Palca</th>
                    <th scope="col">Comandos</th></tr>
                  </thead>
                    <% for(int i=0;i<BD.getVeiculo().size();i++){%>
                     <tbody class="table-striped "> 
                      <tr>
                      <td><%= i%>
                      <td><%= BD.getVeiculo().get(i).getCor() %>
                      <td><%= BD.getVeiculo().get(i).getMarca() %>
                      <td><%= BD.getVeiculo().get(i).getModelo() %>
                      <td><%= BD.getVeiculo().get(i).getPlaca() %>
                      <td>
                            <a href="AlterarVeiculos.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a>
                            <a href="ExcluirVeiculos.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-danger"> Excluir</button></a>
                      </td>
                    </tr>
                     </tbody>
                    <%}%>
                </table>
    </body>
</html>
