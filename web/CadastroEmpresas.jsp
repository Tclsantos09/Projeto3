
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
               response.sendRedirect("ListaEmpresas.jsp");
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
                <input type="submit" name="inseir" Class="btn btn-dark" value="inserir"/>
                <a href="ListaEmpresas.jsp" class="btn btn-outline-secondary" title="Voltar para a lista de contatos.">Lista</a>

                </form>
                
                
                

            </div>
                <div class="col-md-7">
                    <center>
                    <img width="500px" height="350px"   src="imagem/empresas.png"/>
                    </center>
               </div>
            
        </div>
        </div>
        <%}catch(Exception ex){%>
                <h5 style="color:red"><b>Valores incorretos! Tente Novamente.</b></h5><br> 
        <%}%>
    </body>

                    <%@include file="WEB-INF/jspf/footer.jspf" %>

        </body>
    
    

</html>

