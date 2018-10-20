<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
        
    </head>
    <body><div class="container"
               <h4>Confirmar Exclusão</h4>
        
        <%
            int i = Integer.parseInt(request.getParameter("id"));
            Empresa p = BD.getEmpresa().get(i);
            if (request.getParameter("excluir")!=null){
                BD.getEmpresa().remove(i);
                response.sendRedirect("CadastroEmpresas.jsp");
            }
        %>
                
        <form id="<%=i%>">
            <div >
                ID<br> <input  type="text" name="id" value="<%= i%>"><br>
                <input  type="hidden" name="i" value="<%= i%>">   
                Nome:<br> <%= p.getNome()%><br>
                Razão Social:<br> <%= p.getRazaoSocial()%><br>
                CNPJ:<br> <%= p.getCnpj()%><br>
                Telefone: <br> <%= p.getTelefone()%><br>
                Website: <br> <%= p.getWebsite()%><br><br>
                <button name="excluir" class="btn btn-danger">Excluir</button>
                <button class="btn btn-dark"><a href="CadastroEmpresas.jsp" >Voltar</a></button>
            </div>
        </form>
                </div>
    </body>
    
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>