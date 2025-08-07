<%-- 
    Document   : atualizar
    Created on : 29 de mai. de 2025, 17:43:12
    Author     : brubs and pedrovisk
--%>

<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos/home.css">
        <title> Atualizar </title>
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
                        <a href="ControleLivro?op=ListarLivrosConsulta"><span class="material-symbols-outlined">
                                manage_search
                            </span> Consultar todos os livros </a>
                    </li>
                </ul>
            </div>
        </aside>

        <div class="formulario-container">
            <form action="ControleLivro" method="POST" class="formulario-livro" enctype="multipart/form-data">

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

                <div class="container-linhas" style="display: flex;
                     justify-content: space-between;
                     align-items: flex-start;
                     gap: 40px;">
                    <div class="container-linha"> 
                        <div class="linha">
                            <div class="campo-formulario">
                                <label>Editora</label>
                                <input type="text" name="txteditora" value ="<%=L.getEditora()%>" />
                            </div>
                            <div class="campo-formulario">
                                <label>Classificação Indic</label>
                                <input type="text" name="txtclassificacaoindicativa" value ="<%=L.getClassificacaoindicativa()%>" />
                            </div>

                            <div class="campo-formulario">
                                <label>Páginas</label>
                                <input type="text" name="txtpaginas" value ="<%=L.getPaginas()%>"/>
                            </div>
                            <div class="campo-formulario">
                                <label>Volume</label>
                                <input type="text" name="txtvolume" value ="<%=L.getVolume()%>" />
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
                                <label>Saga</label>
                                <input type="text" name="txtsaga" value ="<%=L.getSaga()%>" />
                            </div>
                            <div class="campo-formulario">
                                <label>Idioma</label>
                                <input type="text" name="txtidioma" value="<%=L.getIdioma()%>"/>
                            </div>
                        </div>
                    </div>

                    <div class="container-input">
                            <label class="picture" tabIndex="0">
                                <input type="file" id="txtcaminhoimagem" accept="image/*" name="txtcaminhoimagem" style="display: none;"/> 
                                <span class="picture__image"> Faça upload da capa do livro </span>
                            </label>
                        </div>

                </div>





                <div class="linha">
                    <div class="campo-formulario">
                        <label>Data de Publicação</label>
                        <input type="date" name="txtdatapublicacao" value="<%=L.getDatapublicacao()%>" />
                    </div>

                    <div class="campo-formulario">
                        <label>Versão</label>
                        <input type="text" name="txtversao" value ="<%=L.getVersao()%>" />
                    </div>
                </div>

                <div class="campo-formulario">
                    <label>Categoria</label>
                    <input type="text" name="txtcategoria" value="<%=L.getCategoria()%>" />
                </div>
                <div class="campo-formulario">
                    <label>Sinopse</label>
                    <input type="text" name="txtsinopse" value="<%=L.getSinopse()%>"/>
                </div>



                <div class="botoes">
                    <input class="button-cons" type="submit" name="op" value="Efetivar Atualização"/>
                </div>

                <%} else {%>
                <h2>Produto não encontrado.</h2>
                <% }%>

            </form>

            <script>
                const inputFile = document.querySelector("#txtcaminhoimagem");
                const pictureImage = document.querySelector(".picture__image");
                const pictureImageTxt = "Faça upload da capa do livro";
                pictureImage.innerHTML = pictureImageTxt;

                inputFile.addEventListener("change", function (e) {
                    const inputTarget = e.target;
                    const file = inputTarget.files[0];

                    if (file) {
                        const reader = new FileReader();

                        reader.addEventListener("load", function (e) {
                            const readerTarget = e.target;

                            const img = document.createElement("img");
                            img.src = readerTarget.result;
                            img.classList.add("picture__img");

                            pictureImage.innerHTML = "";
                            pictureImage.appendChild(img);
                        });

                        reader.readAsDataURL(file);
                    } else {
                        pictureImage.innerHTML = pictureImageTxt;
                    }
                });
            </script>

    </body>

</html>