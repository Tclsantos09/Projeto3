<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Veiculos</title>
        
    </head>
    <body><div class="container">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h4>Cadastrar Veículos</h4>
        
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
            Cor:<br> <input  type="text" name="cor" required="true" required="true"/>  <br>
                    Marca:<br> <input  type="text" name="marca" required="true" required="true"/>  <br>
                    Modelo: <br><input  type="text" name="modelo" required="true" required="true"/>  <br>
                    Placa: <br><input  type="text" name="placa" required="true" required="true"/>  <br><br>
                    <input class="btn btn-dark" type="submit" name="inserir" value="Inserir"/>
                </form><hr>
        
                
                <table border="1" style="margin: 5px">
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
                            <a href="AlterarVeiculos.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a>
                            <a href="ExcluirVeiculos.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-danger"> Excluir</button></a>
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
