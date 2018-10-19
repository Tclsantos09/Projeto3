
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão da Empresa</title>
    </head>
    <body>
                <h2>Confirmar Exclusão da Empresa</h2>
                
                <%
                
                    int i = Integer.parseInt(request.getParameter("id"));
                    Empresa p = BD.getEmpresa().get(i);
                    if (request.getParameter("excluir")!=null){
                        //try{
                        BD.getEmpresa().remove(i);
                        response.sendRedirect("CadastroEmpresas.jsp");

                        //}catch (IndexOutOfBoundsException erro) {
                        // response.sendRedirect("cadastroEmpresas.jsp");
                    }

                %>

                  <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>
                    <input  type="hidden" name="i" value="<%= i%>">
                    Nome:<br> <%= p.getNome()%>  <br>
                    Razão Social:<br> <%= p.getRazaoSocial()%> <br>
                    CNPJ: <br> <%= p.getCnpj()%> <br>
                    Telefone: <br> <%= p.getTelefone()%> <br>
                    WebSite: <br> <%= p.getWebsite()%> <br><br>
                    <button name="excluir">Excluir</button>
                    <button><a href="CadastroEmpresas.jsp">Não Excluir</a></button>
                    
                </form>
                      
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
