<%-- 
    Document   : cadastrar
    Created on : 23 de mai. de 2025, 18:06:34
    Author     : brubs and pedrovisk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos/home.css">
        <title> Cadastrar </title>
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
                        <a href="consultaTodos.jsp"><span class="material-symbols-outlined">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <div class="formulario-container">
            <h2> Cadastro de Livros </h2>
            <form ACTION="ControleLivro" method="POST">
                <div class="formulario-livro">
                    <div class="linha">
                        <div class="campo-formulario">
                            <label>Autor</label>
                            <input type="text" name="txtautor" />
                        </div>
                        <div class="campo-formulario">
                            <label>ISBN</label>
                            <input type="text" name="txtisbn" />
                        </div>
                    </div>

                    <div class="campo-formulario">
                        <label>Título</label>
                        <input type="text" name="txttitulo" />
                    </div>

                    <div class="linha">

                        <div class="campo-formulario">
                            <label>Editora</label>
                            <input type="text" name="txteditora" />
                        </div>
                        <div class="campo-formulario">
                            <label>Classificação Indicativa</label>
                            <input type="text" name="txtclassificacaoindicativa" />
                        </div>
                    </div>

                    <div class="linha">
                        <div class="campo-formulario">
                            <label>Páginas</label>
                            <input type="text" name="txtpaginas" />
                        </div>
                        <div class="campo-formulario">
                            <label>Volume</label>
                            <input type="text" name="txtvolume" />
                        </div>
                    </div>

                    <div class="linha">
                        <div class="campo-formulario">
                            <label>Saga</label>
                            <input type="text" name="txtsaga" />
                        </div>
                        <div class="campo-formulario">
                            <label>Idioma</label>
                            <input type="text" name="txtidioma" />
                        </div>
                    </div>

                    <div class="linha">
                        <div class="campo-formulario">
                            <label>Data de Publicação</label>
                            <input type="date" name="txtdatapublicacao" />
                        </div>
                        <div class="campo-formulario">
                            <label>Disponibilidade</label>
                            <input type="text" name="txtdisponibilidade" />
                        </div>
                        <div class="campo-formulario">
                            <label>Preço</label>
                            <input type="text" name="txtpreco" />
                        </div>
                    </div>

                    <div class="linha">
                        <div class="campo-formulario">
                            <label>Categoria</label>
                            <input type="text" name="txtcategoria" />
                        </div>
                    </div>

                    <div class="campo-formulario">
                        <label>Sinopse</label>
                        <input type="text" name="txtsinopse"/>
                    </div>

                    <div class="campo-formulario">
                        <label>Versão</label>
                        <input type="text" name="txtversao" />
                    </div>

                    <div class="botoes">
                        <input class="button-cons" type="submit" name="op" value="Cadastrar"/>
                    </div>
                </div>
            </form>
        </div>


    </body>

</html>