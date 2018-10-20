
<%@page import="br.com.fatecpg.web.BD"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Exclusão</title>
    </head>
    <body><div class="container">
                <h4>Confirmar Exclusão</h4>
                
                <%
                
                    int i = Integer.parseInt(request.getParameter("id"));
                    Pessoa p = BD.getPessoa().get(i);
                    if (request.getParameter("excluir")!=null){
                  
                        BD.getPessoa().remove(i);
                        response.sendRedirect("CadastroPessoas.jsp");

                    }

                %>
                
                <form id="<%=i%>">
                    ID<br> <input  type="text" name="id" value="<%= i%>">  <br>
                    <input  type="hidden" name="i" value="<%= i%>">
                            
                    Nome:<br> <%= p.getNome()%>  <br>
                    CPF:<br> <%= p.getCpf()%> <br>
                    Email: <br> <%= p.getEmail()%> <br>
                    Telefone: <br> <%= p.getTelefone()%> <br><br>
                    <button name="excluir" class="btn btn-danger">Excluir</button>
                    <button class="btn btn-dark" ><a href="CadastroPessoas.jsp" >Voltar</a></button>
                    
                </form>
        </div>         
    </body>
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
</html>
