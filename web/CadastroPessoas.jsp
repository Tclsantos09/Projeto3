
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href=../../../Bootstrap/css/bootstrap.css">

           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Pessoas</title>
        <style>
            body{
                padding-bottom:100px;
            }
            
            table,th, td {
                    border-collapse: collapse;
                    border: 1px solid black;
            }
                
            th, td {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h2 align="center">Cadastrar Pessoas</h2>

        <%
            try{
                if (request.getParameter("inserir")!=null){
                   Pessoa ins = new Pessoa();
                   ins.setNome(request.getParameter("nome"));
                   ins.setCpf(request.getParameter("cpf"));
                   ins.setEmail(request.getParameter("email"));
                   ins.setTelefone(request.getParameter("telefone"));

                   BD.getPessoa().add(ins);
                   response.sendRedirect(request.getRequestURI());
                }
        %>

        <form >
            <div align="center">
                Nome:<br> <input  type="text" name="nome"/>  <br>
                CPF:<br> <input type="text" name="cpf" placeholder="Somente números"/>  <br>
                Email: <br><input  type="text" name="email"/>  <br>
                Telefone: <br><input  type="text" name="telefone" placeholder="Somente números"/>  <br><br>
                <input type="submit" name="inserir" value="inserir"/>
            </div>
        </form><br><br>

        <table border="1" style="margin: 5px" align="center">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>  
            <%for (int i = 0; i < BD.getPessoa().size(); i++) {%>
                <tr>
                    <td><%=i%></td>
                    <td><%=BD.getPessoa().get(i).getNome()%></td>
                    <td><%=BD.getPessoa().get(i).getCpf()%></td>
                    <td><%=BD.getPessoa().get(i).getEmail()%></td>
                    <td><%=BD.getPessoa().get(i).getTelefone()%></td>
                    <td>
                        <a href="AlterarPessoas.jsp?id=<%=i%>"> <button name="alterar">Alterar</button></a>
                        <a href="ExcluirPessoas.jsp?id=<%=i%>"> <button>Excluir</button></a>
                    </td>
                </tr>
            <%}%>
        </table>
        
        <%}catch(Exception ex){%>
          <b>Valores incorretos! Tente Novamente.</b><br>
        <%}%>  
    </body>
    <div class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
