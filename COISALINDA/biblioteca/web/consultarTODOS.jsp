<%-- 
    Document   : consultarTODOS
    Created on : 23 de mai. de 2025, 18:07:03
    Author     : brubs and pedrovisk
--%>

<%@page import="java.util.List"%>
<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos/home.css">
        <title> Consultar todos </title>
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    </head>

    <body>
        <aside class="sidebar">

            <div class="sidebar-header">
                <ul class="sidebar-links">
                    <li>
                        <a href="home.jsp"><span class="material-symbols-outlined">
                                book_ribbon
                            </span> Minha biblioteca </a>
                    </li>
                    <br>
                    <li>
                        <a href="pesqlivro.jsp"><span class="material-symbols-outlined">
                                search
                            </span> Pesquisar livros </a>
                    </li>
                    <br>

                    <li>
                        <a href="consultarID.jsp"><span class="material-symbols-outlined">
                                frame_inspect
                            </span> Consultar livro por id </a>
                    </li>
                    <br>
                    <li>
                        <a href="cadastrar.jsp"><span class="material-symbols-outlined">
                                edit_square
                            </span> Cadastrar livro </a>
                    </li>
                    <br>
                    <li>
                        <a href="consultaTodos.jsp"><span class="material-symbols-outlined">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <%
            List<Livro> livros = (List<Livro>) request.getAttribute("livros");
            if (livros != null && !livros.isEmpty()) {
                for (Livro livro : livros) {
        %>
        <div class="consultas">
            <p><strong>Id:</strong> <%=livro.getId()%></p>
            <p><strong>Título:</strong> <%=livro.getTitulo()%></p>
            <p><strong>Preço:</strong> <%=livro.getPreco()%></p>
            <p><strong>Autor:</strong> <%=livro.getAutor()%></p>
            <p><strong>Editora:</strong> <%=livro.getEditora()%></p>
            <p><strong>Páginas:</strong> <%=livro.getPaginas()%></p>
            <p><strong>Volume:</strong> <%=livro.getVolume()%></p>
            <p><strong>Saga:</strong> <%=livro.getSaga()%></p>
            <p><strong>Idioma:</strong> <%=livro.getIdioma()%></p>
            <p><strong>Data de publicação:</strong> <%=livro.getDatapublicacao()%></p>
            <p><strong>Disponibilidade:</strong> <%=livro.getDisponibilidade()%></p>
            <p><strong>Categoria:</strong> <%=livro.getCategoria()%></p>
            <p><strong>Sinopse:</strong> <%=livro.getSinopse()%></p>
            <p><strong>Versão:</strong> <%=livro.getVersao()%></p>
            <p><strong>Classificação indicativa:</strong> <%=livro.getClassificacaoindicativa()%></p>
            <p><strong>ISBN:</strong> <%=livro.getIsbn()%></p>
        </div>
        <%
            }
        } else {
        %>
        <p>Nenhum livro encontrado.</p>
        <%
            }
        %>


    </body>

</html>