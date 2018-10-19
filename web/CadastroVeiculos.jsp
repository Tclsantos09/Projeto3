<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Veiculos</title>
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
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2 align="center">Cadastrar Veículos</h2>
        
        <%    try{                   
            if(request.getParameter("inserir")!=null){
            Veiculo ins = new Veiculo();
            ins.setCor(request.getParameter("cor"));
            ins.setMarca(request.getParameter("marca"));
            ins.setModelo(request.getParameter("modelo"));
            ins.setPlaca(request.getParameter("placa"));
            
            BD.getVeiculo().add(ins);
            response.sendRedirect(request.getRequestURI());
            }
        %>
        
        <form class="container">
            <div align="center">
                Cor:<br> <input  type="text" name="cor"/>  <br>
                Marca:<br> <input  type="text" name="marca"/>  <br>
                Modelo: <br><input  type="text" name="modelo"/>  <br>
                Placa: <br><input  type="text" name="placa"/>  <br><br>
                <input type="submit" name="inserir" value="inserir"/>
            </div>
        </form> <br><br>

        <table border="1" style="margin: 5px" align="center">
            <tr>
            <th>Id</th>
            <th>Cor</th></th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Palca</th>
            <th>Comandos</th></tr>

            <% for(int i=0;i<BD.getVeiculo().size();i++){%>
                <tr>
                    <td><%= i%>
                    <td><%= BD.getVeiculo().get(i).getCor() %>
                    <td><%= BD.getVeiculo().get(i).getMarca() %>
                    <td><%= BD.getVeiculo().get(i).getModelo() %>
                    <td><%= BD.getVeiculo().get(i).getPlaca() %>
                    <td>
                        <a href="AlterarVeiculos.jsp?id=<%=i%>"> <button name="alterar">Alterar</button></a>
                        <a href="ExcluirVeiculos.jsp?id=<%=i%>"> <button>Excluir</button></a>
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
