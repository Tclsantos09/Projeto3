<%-- 
    Document   : ListaEmpresas
    Created on : 20/10/2018, 04:52:55
    Author     : Weslley
--%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Empresa</title>
    </head>
    <body>
        <h1>Lista Empresa</h1>
        <button class="btn btn-alert"><a href="CadastroEmpresas.jsp">Novo Cadastro</a></button><br><br>
            <table class="table table-hover">
               <thead class = "thead-light ">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Razão Social</th>
                <th scope="col">CNPJ</th>
                <th scope="col">Telefone</th>
                <th scope="col">Website</th>
                <th scope="col">Comandos</th>
            </tr>
               </thead>
                       
              <%for (int i = 0; i < BD.getEmpresa().size(); i++) {%>
              <tbody class="table-striped ">       
                <tr>
                   <td><%=i%></td>
                   <td><%=BD.getEmpresa().get(i).getNome()%></td>
                   <td><%=BD.getEmpresa().get(i).getRazaoSocial()%></td>
                   <td><%=BD.getEmpresa().get(i).getCnpj()%></td>
                   <td><%=BD.getEmpresa().get(i).getTelefone()%></td>
                   <td><%=BD.getEmpresa().get(i).getWebsite()%></td>
                   <td>
                       <a href="AlterarEmpresas.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a>
                       <a href="ExcluirEmpresas.jsp?id=<%=i%>"> <button class="btn btn-danger">Excluir</button></a>
                   </td>
               </tr>
            <%}%>
             </tbody>
        </table>
    </body>
</html>
