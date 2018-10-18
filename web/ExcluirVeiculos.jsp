
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
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
        int i  = Integer.parseInt(request.getParameter("id"));
                            Veiculo ex = BD.getVeiculo().get(i);

        if(request.getParameter("excluir")!=null){
            
            BD.getVeiculo().remove(i);
            response.sendRedirect("CadastroVeiculos.jsp");
        }
        %>
        
        <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>
                    <input  type="hidden" name="i" value="<%= i%>">
                            
                    Cor:<br> <%= ex.getCor()%>  <br>
                    Marca:<br> <%= ex.getMarca()%> <br>
                    Modelo: <br> <%= ex.getModelo()%> <br>
                    Placa: <br> <%= ex.getPlaca()%> <br><br>
                    <button name="excluir">Excluir</button>
                    <button><a href="CadastroVeiculos.jsp">Não Excluir</a></button>
                    
                </form>
        
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
