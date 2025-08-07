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
        
        </script>
        <title> Cadastrar </title>
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
                        <a href="cadastrar.jsp"><span class="material-symbols-outlined" style="color: black">
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
            <h2> Cadastro de Livros </h2>
            <form action="ControleLivro" method="POST" enctype="multipart/form-data">
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

                    <div class="container-linhas" style="display: flex;
                         justify-content: space-between;
                         align-items: flex-start;
                         gap: 40px;">
                        <div class="container-linha"> 
                            <div class="linha">
                                <div class="campo-formulario">
                                    <label>Editora</label>
                                    <input type="text" name="txteditora" />
                                </div>
                                <div class="campo-formulario">
                                    <label>Classificação Indic</label>
                                    <input type="text" name="txtclassificacaoindicativa" />
                                </div>

                                <div class="campo-formulario">
                                    <label>Páginas</label>
                                    <input type="text" name="txtpaginas" />
                                </div>
                                <div class="campo-formulario">
                                    <label>Volume</label>
                                    <input type="text" name="txtvolume" />
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
                                    <label>Saga</label>
                                    <input type="text" name="txtsaga" />
                                </div>
                                <div class="campo-formulario">
                                    <label>Idioma</label>
                                    <input type="text" name="txtidioma" />
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
                            <input type="date" name="txtdatapublicacao" />
                        </div>

                        <div class="campo-formulario">
                            <label>Versão</label>
                            <input type="text" name="txtversao" />
                        </div>
                    </div>

                    <div class="campo-formulario">
                        <label>Categoria</label>
                        <input type="text" name="txtcategoria" />
                    </div>
                    <div class="campo-formulario">
                        <label>Sinopse</label>
                        <input type="text" name="txtsinopse"/>
                    </div>



                    <div class="botoes">
                        <input class="button-cons" type="submit" name="op" value="Cadastrar"/>
                    </div>
                </div> 
        </div>
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