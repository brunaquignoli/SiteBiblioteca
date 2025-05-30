<%-- 
    Document   : consulta
    Created on : 22 de mai. de 2025, 19:42:16
    Author     : brubs and pedrovisk
--%>
<%@page import="model.Livro"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos/home.css">
        <title> Consultar ID </title>
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
                        <a href="consultarID.jsp"><span class="material-symbols-outlined" style="color: black">
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

        <div class="Wrapper">
            <div class="InputContainer">
                <form class="search-form" action="ControleLivro" method="GET"> 
                    <input id="input" class="input" name="txtId" placeholder="Digite o ID do livro" type="text">
                    <button class="search-btn" type="submit" name="op" value="ConsultarID">
                        <span class="material-symbols-outlined">search</span>
                    </button>
                </form>
            </div>
        </div>


        <div class="imagens">
            <figure>
                <img id="imagem1" class="imagem" src="imagens/imagem1.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem2" class="imagem" src="imagens/imagem2.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem3" class="imagem" src="imagens/imagem3.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem4" class="imagem" src="imagens/imagem4.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem5" class="imagem" src="imagens/imagem5.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem6" class="imagem" src="imagens/imagem6.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem7" class="imagem" src="imagens/imagem7.png" alt="imagem nao encontrada">
            </figure>

            <figure>
                <img id="imagem8" class="imagem" src="imagens/imagem8.png" alt="imagem nao encontrada">
            </figure>
            <figure>
                <img id="imagem9" class="imagem" src="imagens/imagem9.png" alt="imagem nao encontrada">
            </figure>
        </div>

    </body>

</html>
