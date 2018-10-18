<%-- 
    Document   : ExcluirVeiculos
    Created on : 15/10/2018, 11:51:32
    Author     : thais.lopes e Jefferson Rodrigues
--%>

<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Confirmar Exclusão</h2>
        
         <%
                
            int i = Integer.parseInt(request.getParameter("id"));
            Veiculo v = BD.getVeiculo().get(i);
            if (request.getParameter("excluir")!=null){
            //try{
                BD.getVeiculo().remove(i);
                response.sendRedirect("CadastroVeiculos.jsp");

            //}catch (IndexOutOfBoundsException erro) {
            // response.sendRedirect("cadastroPessoas.jsp");
            }

        %>
                
        <form id="<%=i%>">
            ID<br> <input  type="text" name="id" value="<%= i%>">  <br>
            <input  type="hidden" name="i" value="<%= i%>">
                            
            Marca:<br> <%= v.getMarca()%>  <br>
            Modelo:<br> <%= v.getModelo()%> <br>
            Cor: <br> <%= v.getCor()%> <br>
            Plca: <br> <%= v.getPlaca()%> <br><br>
            <button name="excluir">Excluir</button>
            <button><a href="CadastroVeiculos.jsp">Cancelar</a></button>
                    
        </form>        
        
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
