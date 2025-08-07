<%-- 
    Document   : consulta
    Created on : 22 de mai. de 2025, 19:42:16
    Author     : brubs and pedrovisk
--%>
<%@page import="java.util.List"%>
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
                        <a href="ControleLivro?op=ListarLivrosHome"><span class="material-symbols-outlined">
                                book_ribbon
                            </span> Minha biblioteca </a>
                    </li>
                    <br>
                    <li>
                        <a href="ControleLivro?op=EntrarPesquisa"><span class="material-symbols-outlined">
                                search
                            </span> Pesquisar livros </a>
                    </li>
                    <br>

                    <li>
                        <a href="ControleLivro?op=EntrarPesquisaID"><span class="material-symbols-outlined" style="color: black">
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
                        <a href="ControleLivro?op=ListarLivrosConsulta"><span class="material-symbols-outlined">
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
        <%
            List<Livro> livros = (List<Livro>) request.getAttribute("lista");
            if (livros != null) {
                for (Livro l : livros) {
        %>
        <figure>
            <a href="ControleLivro?op=ConsultarIDHome&id=<%=l.getId()%>">
                <img class="imagem" src="<%=l.getCaminhoImagem()%>" alt="Capa do livro">
            </a>
        </figure>
        <%
                }
            }
        %>
    </div>

    </body>

</html>
