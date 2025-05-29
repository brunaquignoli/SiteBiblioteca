/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.LivroDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import model.Livro;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Pedrovisk and Brubs
 */
@WebServlet(name = "ControleLivro", urlPatterns = {"/ControleLivro"})
public class ControleLivro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String op = request.getParameter("op");
            LivroDAO LDAO = new LivroDAO();
            Livro L = new Livro();
            String mensagem = "";
            if (op.equals("Cadastrar")) {
                String titulo = request.getParameter("txttitulo");
                String autor = request.getParameter("txtautor");
                String sinopse = request.getParameter("txtsinopse");
                double preco = Double.parseDouble(request.getParameter("txtpreco"));
                String editora = request.getParameter("txteditora");
                int paginas = Integer.parseInt(request.getParameter("txtpaginas"));
                int volume = Integer.parseInt(request.getParameter("txtvolume"));
                String saga = request.getParameter("txtsaga");
                String idioma = request.getParameter("txtidioma");
                String datapublicacao = request.getParameter("txtdatapublicacao");
                int disponibilidade = Integer.parseInt(request.getParameter("txtdisponibilidade"));
                String categoria = request.getParameter("txtcategoria");
                String versao = request.getParameter("txtversao");
                int classificacaoindicativa = Integer.parseInt(request.getParameter("txtclassificacaoindicativa"));
                String isbn = request.getParameter("txtisbn");

                L.setTitulo(titulo);
                L.setAutor(autor);
                L.setSinopse(sinopse);
                L.setPreco(preco);
                L.setEditora(editora);
                L.setPaginas(paginas);
                L.setVolume(volume);
                L.setSaga(saga);
                L.setIdioma(idioma);
                L.setDatapublicacao(datapublicacao);
                L.setDisponibilidade(disponibilidade);
                L.setCategoria(categoria);
                L.setVersao(versao);
                L.setClassificacaoindicativa(classificacaoindicativa);
                L.setIsbn(isbn);

                try {
                    LDAO.cadastrar(L);
                    mensagem = "Cadastrado com sucesso";
                } catch (ClassNotFoundException | SQLException ex) {
                    mensagem = "ERRO" + ex.getMessage();
                }
                
                request.setAttribute("msg", mensagem);
                request.getRequestDispatcher("resultados.jsp").forward(request, response);
                
            } else if (op.equals("Deletar")) {
                int id = Integer.parseInt(request.getParameter("txtid"));
                L.setId(id);
                try {
                    LDAO.deletarID(L);
                    mensagem = "Deletado com sucesso";
                } catch (ClassNotFoundException | SQLException ex) {
                    mensagem = "ERRO" + ex.getMessage();
                }
            } else if (op.equals("Atualizar")) {
                int id = Integer.parseInt(request.getParameter("txtid"));
                String titulo = request.getParameter("txttitulo");
                String autor = request.getParameter("txtautor");
                String sinopse = request.getParameter("txtsinopse");
                double preco = Double.parseDouble(request.getParameter("txtpreco"));
                String editora = request.getParameter("txteditora");
                int paginas = Integer.parseInt(request.getParameter("txtpaginas"));
                int volume = Integer.parseInt(request.getParameter("txtvolume"));
                String saga = request.getParameter("txtsaga");
                String idioma = request.getParameter("txtidioma");
                String datapublicacao = request.getParameter("txtdatapublicacao");
                int disponibilidade = Integer.parseInt(request.getParameter("txtdisponibilidade"));
                String categoria = request.getParameter("txtcategoria");
                String versao = request.getParameter("txtversao");
                int classificacaoindicativa = Integer.parseInt(request.getParameter("txtclassificacaoindicativa"));
                String isbn = request.getParameter("txtisbn");

                L.setId(id);
                L.setTitulo(titulo);
                L.setAutor(autor);
                L.setSinopse(sinopse);
                L.setPreco(preco);
                L.setEditora(editora);
                L.setPaginas(paginas);
                L.setVolume(volume);
                L.setSaga(saga);
                L.setIdioma(idioma);
                L.setDatapublicacao(datapublicacao);
                L.setDisponibilidade(disponibilidade);
                L.setCategoria(categoria);
                L.setVersao(versao);
                L.setClassificacaoindicativa(classificacaoindicativa);
                L.setIsbn(isbn);

                try {
                    LDAO.atualizar(L);
                    mensagem = "Atualizado com sucesso";
                } catch (ClassNotFoundException | SQLException ex) {
                    mensagem = "ERRO" + ex.getMessage();
                }
            } else if (op.equals("ConsultarID")) {
                int id = Integer.parseInt(request.getParameter("txtId"));
                L.setId(id);

                try {
                    Livro resultado = LDAO.consultarID(L);
                    request.setAttribute("livro", resultado);
                    mensagem = "Consultado com sucesso";
                } catch (ClassNotFoundException | SQLException ex) {
                    mensagem = "ERRO" + ex.getMessage();
                }

                request.setAttribute("msg", mensagem);
                request.getRequestDispatcher("consulta.jsp").forward(request, response);
                
            } else if (op.equals("ProcurarTitulo")) {
                String titulo = request.getParameter("txtTitulo");
                L.setTitulo(titulo);

                try {
                    Livro resultado = LDAO.consultarTitulo(L);
                    request.setAttribute("livro", resultado);
                    mensagem = "Consultado com sucesso";
                } catch (ClassNotFoundException | SQLException ex) {
                    mensagem = "ERRO" + ex.getMessage();
                }

                request.setAttribute("msg", mensagem);
                request.getRequestDispatcher("consulta.jsp").forward(request, response);
                
            } else if (op.equals("Consultar todos os livros")) {
                try {
                    List<Livro> livros = LDAO.consultarTodos();
                    request.setAttribute("livro", livros);
                    request.getRequestDispatcher("consultarTODOS.jsp").forward(request, response);
                } catch (ClassNotFoundException | SQLException ex) {
                    System.out.println("Erro ClassNotFound: " + ex.getMessage());
                }
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
