<%-- 
    Document   : cadastrar
    Created on : 23 de mai. de 2025, 18:06:34
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
                        <a href="cadastrar.jsp"><span class="material-symbols-outlined" style="color: black">
                                edit_square
                            </span> Cadastrar livro </a>
                    </li>
                    <br>
                    <li>
                        <a href="consultarTODOS.jsp"><span class="material-symbols-outlined">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <div class="consultas">
            <form ACTION="ControleLivro" method="GET">
                <p>
                    <br> Titulo:<input class="button-cadas" type="text" name="txttitulo"> <br>
                    <br> Preço: <input class="button-cadas" type="text" name="txtpreco"> <br>
                    <br> Autor: <input class="button-cadas" type="text" name="txtautor"><br>
                    <br> Editora: <input class="button-cadas" type="text" name="txteditora"><br>
                    <br> Páginas: <input class="button-cadas" type="text" name="txtpaginas"><br>
                    <br> Volume: <input class="button-cadas" type="text" name="txtvolume"><br>
                    <br> Saga: <input class="button-cadas" type="text" name="txtsaga"> <br>
                    <br> Idioma: <input class="button-cadas" type="text" name="txtidioma"> <br>
                    <br> Data de publicação: <input class="button-cadas" type="text" name="txtdatapublicacao"> <br>
                    <br> Disponibilidade: <input class="button-cadas" type="text" name="txtdisponibilidade"> <br>
                    <br> Categoria: <input class="button-cadas" type="text" name="txtcategoria"> <br>
                    <br> Sinopse: <input class="button-cadas" type="text" name="txtsinopse"> <br>
                    <br> Versão: <input class="button-cadas" type="text" name="txtversao"> <br>
                    <br> Classificação indicativa: <input class="button-cadas" type="text" name="txtclassificacaoindicativa"> <br>
                    <br> ISBN: <input class="button-cadas" type="text" name="txtisbn"> <br>
                </p>
                <div class="botoes">
                <input class="button-cons" type="submit" name="op" value="Cadastrar">
                </div>
            </form>
        </div>

    </body>

</html>
