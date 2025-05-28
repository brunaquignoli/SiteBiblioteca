<%-- 
    Document   : consultarTODOS
    Created on : 23 de mai. de 2025, 18:07:03
    Author     : Bruna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/home.css">
    <title> Galeria </title>
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
                    <a href="consultarTODOS.jsp"><span class="material-symbols-outlined" style="color: black">
                            manage_search
                        </span> Consultar todos os livros </a>
                </li>
            </ul>
        </div>
    </aside>

    <div class="consultas">
        <p>
            Id: <br>
        <br>  Titulo: <br>
        <br>  Preço: <br>
        <br> Autor: <br>
        <br> Editora: <br>
        <br>  Páginas: <br>
        <br>  Volume: <br>
        <br> Saga: <br>
        <br>  Idioma: <br>
        <br>  Data de publicação: <br>
        <br>  Disponibilidade: <br>
        <br> Categoria: <br>
        <br>  Sinopse: <br>
        <br>   Versão: <br>
        <br>  Classificação indicativa: <br>
        <br> ISBN: <br>
        </p>
    </div>

</body>

</html>