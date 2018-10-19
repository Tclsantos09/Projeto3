<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html>
    <head>
                <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Alteração</title>
    </head>
    <body>
                <h2>Confirmar Alteração da Empresa</h2>
                
                <%
                
               int i = Integer.parseInt(request.getParameter("id"));
               if (request.getParameter("alterar")!=null){
               Empresa alt = new Empresa();
               alt.setNome(request.getParameter("nome"));
               alt.setRazaoSocial(request.getParameter("razaoSocial"));
               alt.setCnpj(request.getParameter("cnpj"));
               alt.setTelefone(request.getParameter("telefone"));
               alt.setWebsite(request.getParameter("telefone"));
               
               BD.getEmpresa().set(i, alt);
               response.sendRedirect("CadastroEmpresas.jsp");

               }
                
                
                %>
                
                <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>
                    Nome:<br> <input  type="text" name="nome" value="<%= BD.getEmpresa().get(i).getNome()%>">  <br>
                    Razão Social:<br> <input  type="text" name="cpf" value="<%= BD.getEmpresa().get(i).getRazaoSocial()%>">  <br>
                    CNPJ: <br><input  type="text" name="email" value="<%= BD.getEmpresa().get(i).getCnpj()%>">  <br>
                    Telefone: <br><input  type="text" name="telefone" value="<%= BD.getEmpresa().get(i).getTelefone()%>">  <br>
                    WebSite <br><input  type="text" name="telefone" value="<%= BD.getEmpresa().get(i).getWebsite()%>">  <br>
                    <button name="alterar">Alterar</button>

                </form>
                
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>


      