<%-- 
    Document   : resultados
    Created on : 29 de mai. de 2025, 15:04:15
    Author     : bruna and pedrovisk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilos\home.css">
        <script src="JavaScript.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a class="voltar" href="ControleLivro?op=ListarLivrosHome" onclick="voltar()"> Voltar </a>
        <div class="consultas">
            <%
                String msg = (String) request.getAttribute("msg");
            %>

            <h1> Resultado: <% out.println(msg);%></h1>
        </div>
    </body>
</html>