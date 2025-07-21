<%-- 
    Document   : consultaTodos
    Created on : 30 de mai. de 2025, 10:38:10
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                        <a href="ControleLivro?op=ListarLivrosHome"><span class="material-symbols-outlined">
                                book_ribbon
                            </span> Minha biblioteca </a>
                    </li>
                    <br>
                    <li>
                        <a href="ControleLivro?op=EntrarPesquisaID"><span class="material-symbols-outlined">
                                search
                            </span> Pesquisar livros </a>
                    </li>
                    <br>

                    <li>
                        <a href="ControleLivro?op=EntrarPesquisaID"><span class="material-symbols-outlined">
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
                        <a href="ControleLivro?op=ListarLivrosConsulta"><span class="material-symbols-outlined" style="color: black">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <form ACTION="ControleLivro" method="POST">
            <div class="botoes">
                <input class="button-cons" type="submit" name="op" value="Consultar todos os livros"/>
            </div>
        </form>


        <div class="imagens">
            <%@ page import="java.util.*, model.Livro" %>
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
