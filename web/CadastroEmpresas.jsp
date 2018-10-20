
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page import="br.com.fatecpg.web.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad Empresas</title>
        
     
        
    </head>
    
    <body><div class="container">        
           <%
            if (request.getParameter("inserir")!=null){
               Empresa ins = new Empresa();
               ins.setNome(request.getParameter("nome"));
               ins.setRazaoSocial(request.getParameter("razaoSocial"));
               ins.setCnpj(request.getParameter("cnpj"));
               
               ins.setTelefone(request.getParameter("telefone"));
               
               ins.setWebsite(request.getParameter("website"));
               BD.getEmpresa().add(ins);
               response.sendRedirect("ListaEmpresas.jsp");
            }
        %>
        <%
                if (request.getParameter("inserir") != null) {
                    String Nome = request.getParameter("nome");
                    String RazaoSocial = request.getParameter("razaoSocial");
                    String Cnpj = request.getParameter("cnpj");
                    String telefone = request.getParameter("telefone");
                    String Website = request.getParameter("website");
                    Empresa c = new Empresa();
                    c.setEmpresa(Nome, RazaoSocial, Cnpj, telefone, Website);
                    BD.getEmpresa().add(c);
                    request.getRequestDispatcher("ListaEmpresa.jsp");
                }
            %>

    <div class="row">
            <div class="col-md-5">
                <h4>Cadastrar Empresas</h4>

                <form action="CadastroEmpresas.jsp" method="POST">
                <div class="form-group">
                    <label for="nome" class="font-weight-bold">Nome</label>
                    <input type="text" id="nome" name="nome" class="form-control">
                </div>
                <div class="form-group">
                    <label for="razaoSocial" class="font-weight-bold">Razão Social</label>
                    <input type="text" id="razaoSocial" name="razaoSocial" class="form-control">
                </div>
                <div class="form-group">
                    <label for="cnpj" class="font-weight-bold">CNPJ</label>
                    <input type="number" id="cnpj" name="cnpj" class="form-control">
                </div>
                 <div class="form-group">
                    <label for="telefone" class="font-weight-bold">Telefone</label>
                    <input type="tel" id="telefone" name="telefone" class="form-control">
                </div> 
                <div class="form-group">
                    <label for="website" class="font-weight-bold">WebSite</label>
                    <input type="text" id="website" name="website" class="form-control">
                </div> 
                    <input class="btn btn-dark" type="submit" name="inserir" value="Inserir"/>
                <a href="ListaEmpresas.jsp" class="btn btn-outline-secondary" title="Voltar para a lista de contatos.">Lista</a>

               <br><br> </form>
            </div>
                <div class="col-md-7">
                    <center>
                    <img width="500px" height="350px"   src="imagem/empresas.png"/>
                    </center>
               </div>
            
        </div>
        </div>
        
    </body>

                    <%@include file="WEB-INF/jspf/footer.jspf" %>

        </body>
    
    

</html>

