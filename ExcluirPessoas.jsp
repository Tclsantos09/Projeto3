
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
                    Pessoa p = BD.getPessoa().get(i);
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
                    <input  type="hidden" name="i" value="<%= i%>">
                            
                    Nome:<br> <%= p.getNome()%>  <br>
                    CPF:<br> <%= p.getCpf()%> <br>
                    Email: <br> <%= p.getEmail()%> <br>
                    Telefone: <br> <%= p.getTelefone()%> <br><br>
                    <button name="excluir">Excluir</button>
                    <button><a href="CadastroPessoas.jsp">Cancelar</a></button>
                    
                </form>
                      
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
