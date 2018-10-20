
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Veiculos</title>
        
    </head>
    
        <div class="container">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
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
        <div class="row">
            <div class="col-md-5">
                <h4>Cadastrar Veiculo</h4>

                <form action="CadastroVeiculos.jsp" method="POST">
                <div class="form-group">
                    <label for="cor" class="font-weight-bold">Cor</label>
                    <input type="text" id="cor" name="cor" class="form-control">
                </div>
                <div class="form-group">
                    <label for="marca" class="font-weight-bold">Marca</label>
                    <input type="text" id="marca" name="marca" class="form-control">
                </div>
                <div class="form-group">
                    <label for="modelo" class="font-weight-bold">Modelo</label>
                    <input type="text" id="modelo" name="modelo" class="form-control">
                </div>
                 <div class="form-group">
                    <label for="telefone" class="font-weight-bold">Telefone</label>
                    <input type="tel" id="telefone" name="telefone" class="form-control">
                </div>     
                    <input class="btn btn-dark" type="submit" name="inserir" value="Inserir"/>
                <a href="ListaVeiculos.jsp" class="btn btn-outline-secondary" title="Voltar para a lista de contatos.">Lista</a>

                </form>
                
            </div>
                <div class="col-md-7">
                    <center>
                    <img width="400px" height="350px"   src="imagem/veiculos.png"/>
                    </center>
               </div>        
                </div> 
                
                <%}catch(Exception ex){%>
                    <h5 style="color:red"><b>Valores incorretos! Tente Novamente.</b></h5><br>
                    <button class="btn btn-dark"><a href="CadastroVeiculos.jsp">Voltar</a></button>
                <%}%>   
               
        </body>
/        <%@include file="WEB-INF/jspf/footer.jspf" %>
   
</html>
