
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Alteração</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Confirmar Alteração</h2>
        
        <% 
            int i = Integer.parseInt(request.getParameter("id"));
            if(request.getParameter("alterar")!=null){
            Veiculo alt = new Veiculo();
            alt.setCor(request.getParameter("cor"));
            alt.setMarca(request.getParameter("marca"));
            alt.setModelo(request.getParameter("modelo"));
            alt.setPlaca(request.getParameter("placa"));
            
            BD.getVeiculo().set(i, alt); 
               response.sendRedirect("CadastroVeiculos.jsp");

            }
        %>
        
        <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>

                    Cor:<br> <input  type="text" name="cor" value="<%= BD.getVeiculo().get(i).getCor()%>">  <br>
                    Marca:<br> <input  type="text" name="marca" value="<%= BD.getVeiculo().get(i).getMarca()%>">  <br>
                    Modelo: <br><input  type="text" name="modelo" value="<%= BD.getVeiculo().get(i).getModelo()%>">  <br>
                    Placa: <br><input  type="text" name="placa" value="<%= BD.getVeiculo().get(i).getPlaca()%>">  <br><br>
                    <button name="alterar">Alterar</button>

                </form>
        
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
