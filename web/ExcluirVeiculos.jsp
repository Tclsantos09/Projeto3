
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
    </head>
    <body><div class="container">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h4>Confirmar Exclusão</h4>
        
        <%
        int i  = Integer.parseInt(request.getParameter("id"));
                            Veiculo ex = BD.getVeiculo().get(i);

        if(request.getParameter("excluir")!=null){
            
            BD.getVeiculo().remove(i);
            response.sendRedirect("CadastroVeiculos.jsp");
        }
        %>
        
        <form id="<%=i%>">
                    <div class="form-group col-md-5">
                    ID<input  type="text" class="form-control" name="id" value="<%= i%>">  
                    Cor<input  type="text" class="form-control" name="cor" value="<%= BD.getVeiculo().get(i).getCor()%>">  
                    Marca<input  type="text" class="form-control" name="marca" value="<%= BD.getVeiculo().get(i).getMarca()%>"> 
                    Modelo<input  type="text" class="form-control" name="modelo" value="<%= BD.getVeiculo().get(i).getModelo()%>">  
                    Placa<input  type="text" class="form-control" name="placa" value="<%= BD.getVeiculo().get(i).getPlaca()%>">  <br>
                    <button name="excluir" class="btn btn-danger">Excluir</button>
                    <button class="btn"><a href="ListaVeiculos.jsp">Voltar</a></button>
                    
                </form>
        </div>
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
