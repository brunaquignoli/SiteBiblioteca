<%-- 
    Document   : atualizar
    Created on : 29 de mai. de 2025, 17:43:12
    Author     : bruna
--%>

<%@page import="model.Livro"%>
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
                        <a href="consultarTODOS.jsp"><span class="material-symbols-outlined">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <div class="formulario-container">
            <form action="ControleLivro" method="POST" class="formulario-livro">

                <%Livro L = (Livro) request.getAttribute("livro");
                    if (L != null) {%>

                <div class="linha">
                    <div class="campo-formulario">
                        <label> ID </label>
                    <%=L.getId()%> <input type="hidden" name="txtid" value="<%=L.getId()%>">
                    </div>
                    <div class="campo-formulario">
                        <label>Autor</label> 
                        <input type="text" name="txtautor" value="<%=L.getAutor()%>">
                    </div>
                    <div class="campo-formulario">
                        <label>ISBN</label>
                        <input type="text" name="txtisbn" value="<%=L.getIsbn()%>" />
                    </div>
                </div>

                <div class="campo-formulario">
                    <label>Título</label>
                    <input type="text" name="txttitulo" value ="<%=L.getTitulo()%>" />
                </div>

                <div class="linha">

                    <div class="campo-formulario">
                        <label>Editora</label>
                        <input type="text" name="txteditora" value ="<%=L.getEditora()%>" />
                    </div>
                    <div class="campo-formulario">
                        <label>Classificação Indicativa</label>
                        <input type="text" name="txtclassificacaoindicativa" value ="<%=L.getClassificacaoindicativa()%>" />
                    </div>
                </div>

                <div class="linha">
                    <div class="campo-formulario">
                        <label>Páginas</label>
                        <input type="text" name="txtpaginas" value ="<%=L.getPaginas()%>"/>
                    </div>
                    <div class="campo-formulario">
                        <label>Volume</label>
                        <input type="text" name="txtvolume" value ="<%=L.getVolume()%>" />
                    </div>
                </div>

                <div class="linha">
                    <div class="campo-formulario">
                        <label>Saga</label>
                        <input type="text" name="txtsaga" value ="<%=L.getSaga()%>" />
                    </div>
                    <div class="campo-formulario">
                        <label>Idioma</label>
                        <input type="text" name="txtidioma" value="<%=L.getIdioma()%>"/>
                    </div>
                </div>

                <div class="linha">
                    <div class="campo-formulario">
                        <label>Data de Publicação</label>
                        <input type="date" name="txtdatapublicacao" value="<%=L.getDatapublicacao()%>" />
                    </div>
                    <div class="campo-formulario">
                        <label>Disponibilidade</label>
                        <input type="text" name="txtdisponibilidade" value="<%=L.getDisponibilidade()%>" />
                    </div>
                    <div class="campo-formulario">
                        <label>Preço</label>
                        <input type="text" name="txtpreco" value="<%=L.getPreco()%>"/>
                    </div>
                </div>

                <div class="linha">
                    <div class="campo-formulario">
                        <label>Categoria</label>
                        <input type="text" name="txtcategoria" value="<%=L.getCategoria()%>" />
                    </div>
                </div>

                <div class="campo-formulario">
                    <label>Sinopse</label>
                    <input name="txtsinopse" rows="3" value="<%=L.getSinopse()%>"/>
                </div>

                <div class="campo-formulario">
                    <label>Versão</label>
                    <input type="text" name="txtversao" value ="<%=L.getVersao()%>" />
                </div>

                <div class="botoes">
                    <input class="button-cons" type="submit" name="op" value="Efetivar Atualização"/>
                </div>

                <%} else {%>
                <h2>Produto não encontrado.</h2>
                <% }%>

            </form>
        </div>


    </body>

</html>