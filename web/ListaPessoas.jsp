<%-- 
    Document   : ListaPessoas
    Created on : 20/10/2018, 07:13:24
    Author     : Weslley
--%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Pessoas</title>
    </head>
    <body>
        <h1>Lista de Pessoas</h1>
        <button class="btn btn-alert"><a href="CadastroPessoas.jsp">Novo Cadastro</a></button><br><br>

                <table class="table table-hover">

                  <thead class = "thead-light ">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col" >Nome</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Email</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Comandos</th>
                    </tr>
                  </thead>
                        <%for (int i = 0; i < BD.getPessoa().size(); i++) {%>
                        <tbody class="table-striped "> 
                        <tr>
                        <td><%=i%></td>
                        <td><%=BD.getPessoa().get(i).getNome()%></td>
                        <td><%=BD.getPessoa().get(i).getCpf()%></td>

                        <td><%=BD.getPessoa().get(i).getEmail()%></td>
                        <td><%=BD.getPessoa().get(i).getTelefone()%></td>
                        <td>
                            <a href="AlterarPessoas.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a><br>
                            <a href="ExcluirPessoas.jsp?id=<%=i%>"> <button class="btn btn-danger">Excluir</button></a>
                        </td>
                     </tr>
                        <%}%>
                 </tbody>
               </table>
                 
    </body>
   
</html>
