<%-- 
    Document   : consulta
    Created on : 22 de mai. de 2025, 19:42:16
    Author     : bruna
--%>
<%@page import="model.Livro"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilos/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Livro livro = (Livro) request.getAttribute("livro");
            String msg = (String) request.getAttribute("msg");
        %>
        
         <% if (livro != null) { %>
        <p> <%= msg %>
            ID: <%= livro.getId() %>
            Titulo: <%= livro.getTitulo() %>
            Autor: <%= livro.getAutor() %>
            Sinopse: <%= livro.getSinopse() %>
            Preço: <%= livro.getPreco()%>
            Editora: <%= livro.getEditora()%>
            Paginas: <%= livro.getPaginas()%>
            Volume:<%= livro.getVolume()%>
            Saga:<%= livro.getSaga()%>
            Idioma:<%= livro.getIdioma()%>
            Data de publicação:<%= livro.getDatapublicacao()%>
            Disponibilidade:<%= livro.getDisponibilidade()%>
            Categoria:<%= livro.getCategoria()%>
            Versão:<%= livro.getVersao()%>
            Classificação indicativa:<%= livro.getClassificacaoindicativa()%>
            ISBN:<%= livro.getIsbn()%>
        </p>    
        <% } else { %> 
        <h4> Livro não encontrado!!! </h4> 
        <% } %>
        
        <h1>Hello World!</h1>
    </body>
</html>
