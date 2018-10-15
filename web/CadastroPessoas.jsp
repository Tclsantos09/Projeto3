
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Pessoas</title>
    </head>
    <body>
                <h2>Cadastrar Pessoas</h2>
                
                <%
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
                    Nome:<br> <input  type="text" name="nome"/>  <br>
                    CPF:<br> <input  type="text" name="cpf"/>  <br>
                    Email: <br><input  type="text" name="email"/>  <br>
                    Telefone: <br><input  type="text" name="telefone"/>  <br><br>
                    <input type="submit" name="inserir" value="inserir"/>
                </form><hr>
                
                <table border="1" style="margin: 5px">
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
                      
    </body>
    <div class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
