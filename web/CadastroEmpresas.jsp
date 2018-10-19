<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Empresas</title>
        
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
        <h2 align="center">Cadastrar Empresas</h2>
        
        <%
            try{
            if (request.getParameter("inserir")!=null){
               Empresa ins = new Empresa();
               ins.setNome(request.getParameter("nome"));
               ins.setRazaoSocial(request.getParameter("razaoSocial"));
               ins.setCnpj(request.getParameter("cnpj"));
               ins.setTelefone(request.getParameter("telefone"));
               ins.setWebsite(request.getParameter("website"));
               BD.getEmpresa().add(ins);
               response.sendRedirect(request.getRequestURI());
            }
        %>

        <form>
            <div align="center">
                Nome:<br> <input  type="text" name="nome"/>  <br>
                Razão Social:<br> <input  type="text" name="razaoSocial"/>  <br>
                CNPJ<br> <input type="text" name="cnpj" placeholder="Somente números"/>  <br>
                Telefone: <br><input  type="text" name="telefone" placeholder="Somente números"/>  <br>
                Website: <br><input  type="text" name="website"/>  <br> <br>
                <input type="submit" name="inserir" value="inserir"/>
            </div>
        </form><br><br>

        <table border="1" style="margin: 5px" align="center">
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
                       <a href="AlterarEmpresas.jsp?id=<%=i%>"> <button name="alterar">Alterar</button></a>
                       <a href="ExcluirEmpresas.jsp?id=<%=i%>"> <button>Excluir</button></a>
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