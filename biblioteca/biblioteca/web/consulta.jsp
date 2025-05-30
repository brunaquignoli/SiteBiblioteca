<%-- 
    Document   : consulta
    Created on : 22 de mai. de 2025, 19:42:16
    Author     : brubs and pedrovisk
--%>
<%@page import="model.Livro"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilos/home.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
    </head>
    <body>
        <a class="voltar" href="home.jsp"> Voltar </a>
        <div class="consultas">

            <form ACTION="ControleLivro" method="GET">
                <p>
                    <%Livro L = (Livro) request.getAttribute("livro");
                        if (L != null && L.getTitulo() != null) {%>
                    <br> <input type="hidden" name="txtid" value="<%= L.getId()%>"><br>
                    <br> Titulo: <%= L.getTitulo()%> <br>
                    <br> Autor: <%= L.getAutor()%> <br> 
                    <br> Sinopse: <%= L.getSinopse()%> <br>
                    <br> Preço: <%= L.getPreco()%> <br>
                    <br> Editora: <%= L.getEditora()%> <br>
                    <br> Paginas: <%= L.getPaginas()%> <br>
                    <br> Volume: <%= L.getVolume()%> <br>
                    <br> Saga: <%= L.getSaga()%> <br>
                    <br> Idioma: <%= L.getIdioma()%> <br>
                    <br> Data de publicação: <%= L.getDatapublicacao()%> <br>
                    <br> Disponibilidade: <%= L.getDisponibilidade()%> <br>
                    <br> Categoria: <%= L.getCategoria()%> <br>
                    <br> Versão: <%= L.getVersao()%> <br>
                    <br> Classificação indicativa: <%= L.getClassificacaoindicativa()%> <br>
                    <br> ISBN: <%= L.getIsbn()%> <br>
                </p>
                <div class="botoes" > 
                    <input class="button-cons" type="submit" name="op" value="Deletar">
                    <input class="button-cons" type="submit" name="op" value="Atualizar">
                </div> 
                <%
                } else {
                %>
                <h4>Livro não encontrado!</h4>
                <%
                    }
                %>
            </form>
        </div>
    </body>
</html>
