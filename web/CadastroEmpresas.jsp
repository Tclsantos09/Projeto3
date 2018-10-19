<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Empresas</title>
        
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        
    </head>
    
    <body><div class="container">
        <h4 >Cadastrar Empresas</h4>
        
        <%
            try{
            if (request.getParameter("inserir")!=null){
               Empresa ins = new Empresa();
               ins.setNome(request.getParameter("nome"));
               ins.setRazaoSocial(request.getParameter("razaoSocial"));
               
               int cnpj = Integer.parseInt(request.getParameter("cnpj"));
               ins.setCnpj(request.getParameter("cnpj"));
               
               int telefone = Integer.parseInt(request.getParameter("telefone"));
               ins.setTelefone(request.getParameter("telefone"));
               
               ins.setWebsite(request.getParameter("website"));
               BD.getEmpresa().add(ins);
               response.sendRedirect(request.getRequestURI());
            }
        %>

        <form>
            <div >
                Nome:<br> <input  type="text" name="nome" required="true"/>  <br>
                Razão Social:<br> <input  type="text" name="razaoSocial" required="true"/>  <br>
                CNPJ<br> <input type="text" name="cnpj" placeholder="Somente números"required="true"/>  <br>
                Telefone: <br><input  type="text" name="telefone" placeholder="Somente números"required="true"/>  <br>
                Website: <br><input  type="text" name="website"/>  <br> <br>
                <input type="submit" name="inserir" Class="btn btn-dark" value="inserir"/>
            </div>
        </form><hr>

        <table border="1" style="margin: 5px" >
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Website</th>
                <th>Comandos</th>
            </tr>  
            <%for (int i = 0; i < BD.getEmpresa().size(); i++) {%>
                <tr>
                   <td><%=i%></td>
                   <td><%=BD.getEmpresa().get(i).getNome()%></td>
                   <td><%=BD.getEmpresa().get(i).getRazaoSocial()%></td>
                   <td><%=BD.getEmpresa().get(i).getCnpj()%></td>
                   <td><%=BD.getEmpresa().get(i).getTelefone()%></td>
                   <td><%=BD.getEmpresa().get(i).getWebsite()%></td>
                   <td>
                       <a href="AlterarEmpresas.jsp?id=<%=i%>"> <button name="alterar" class="btn btn-primary">Alterar</button></a>
                       <a href="ExcluirEmpresas.jsp?id=<%=i%>"> <button class="btn btn-danger">Excluir</button></a>
                   </td>
               </tr>
            <%}%>
        </table>

        <%}catch(Exception ex){%>
                    <h5 style="color:red"><b>Valores incorretos! Tente Novamente.</b></h5><br>
                    <button class="btn btn-dark"><a href="CadastroEmpresas.jsp">Voltar</a></button>
        <%}%>  
        </div>
                    <%@include file="WEB-INF/jspf/footer.jspf" %>

        </body>
    
    

</html>

