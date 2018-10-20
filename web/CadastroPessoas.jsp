
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Pessoas</title>
                
    </head>
    <body>
                <div class="container">

                <h4>Cadastrar Pessoas</h4>
                
                <%
                    try{
                if (request.getParameter("inserir")!=null){
                   Pessoa ins = new Pessoa();
                   ins.setNome(request.getParameter("nome"));
                   
                   int cpf = Integer.parseInt(request.getParameter("cpf"));
                   ins.setCpf(request.getParameter("cpf"));
                   
                   ins.setEmail(request.getParameter("email"));
                   
                   int telefone = Integer.parseInt(request.getParameter("telefone"));
                   ins.setTelefone(request.getParameter("telefone"));
                   
                   BD.getPessoa().add(ins);
                   response.sendRedirect(request.getRequestURI());
                   }
                %>
                
                <form >
                    Nome:<br> <input  type="text" name="nome" required="true"/>  <br>
                    CPF:<br> <input type="text" name="cpf" maxlenth="11"  placeholder="Somente números" required="true"/>  <br>
                    Email: <br><input  type="text" name="email"/>  <br>
                    Telefone: <br><input  type="text" name="telefone" maxlenth="12" placeholder="Somente números" required="true"/>  <br><br>
                    <input class="btn btn-dark" type="submit" name="inserir" value="Inserir"/>
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
                            <a href="AlterarPessoas.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a>
                            <a href="ExcluirPessoas.jsp?id=<%=i%>"> <button class="btn btn-danger">Excluir</button></a>
                        </td>
                     </tr>
                        <%}%>
                    </table>
                    <%}catch(Exception ex){%>
                    <h5 style="color:red"><b>Valores incorretos! Tente Novamente.</b></h5><br>
                    <button class="btn btn-dark"><a href="CadastroPessoas.jsp">Voltar</a></button>
        <%}%>  
                    
                </div>
    </body>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
   
</html>
