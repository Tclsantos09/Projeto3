
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
    </head>
    <body>
                <h2>Confirmar Exclusão</h2>
                
                <%
                
                int i = Integer.parseInt(request.getParameter("id"));
                if (request.getParameter("excluir")!=null){
                //try{
                BD.getPessoa().remove(i);
                response.sendRedirect("CadastroPessoas.jsp");

                //}catch (IndexOutOfBoundsException erro) {
                // response.sendRedirect("cadastroPessoas.jsp");
                }
                
                
                %>
                
                <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>

                    Nome:<br> <input  type="text" name="nome" value="<%= BD.getPessoa().get(i).getNome()%>">  <br>
                    CPF:<br> <input  type="text" name="cpf" value="<%= BD.getPessoa().get(i).getCpf()%>">  <br>
                    Email: <br><input  type="text" name="email" value="<%= BD.getPessoa().get(i).getEmail()%>">  <br>
                    Telefone: <br><input  type="text" name="telefone" value="<%= BD.getPessoa().get(i).getTelefone()%>">  <br><br>
                    <button name="excluir">Excluir</button>
                    <button><a href="CadastroPessoas.jsp">Não Excluir</a></button>

                </form>
                
                    
                      
    </body>
                <%@include file="WEB-INF/jspf/footer.jspf" %>

</html>
