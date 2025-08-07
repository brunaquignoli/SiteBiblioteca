/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import tools.conexaosql;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Livro;

/**
 *
 * @author brubs and pedrovisk
 */
public class LivroDAO {

    /**
     * Métodos DAO *
     */
    /* método de cadastrar */
    public void cadastrar(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "insert into livro (titulo, autor, sinopse, preco, editora, paginas, volume, saga, idioma, datapublicacao, disponibilidade, categoria, versao, classificacaoindicativa, isbn, caminhoimagem ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setString(1, liv.getTitulo());
        comando.setString(2, liv.getAutor());
        comando.setString(3, liv.getSinopse());
        comando.setDouble(4, liv.getPreco());
        comando.setString(5, liv.getEditora());
        comando.setInt(6, liv.getPaginas());
        comando.setInt(7, liv.getVolume());
        comando.setString(8, liv.getSaga());
        comando.setString(9, liv.getIdioma());
        comando.setString(10, liv.getDatapublicacao());
        comando.setInt(11, liv.getDisponibilidade());
        comando.setString(12, liv.getCategoria());
        comando.setString(13, liv.getVersao());
        comando.setInt(14, liv.getClassificacaoindicativa());
        comando.setString(15, liv.getIsbn());
        comando.setString(16, liv.getCaminhoImagem());
        comando.execute();
        con.close();
    }

    /* método de deletar por ID */
    public void deletarID(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "delete from livro where id = ?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setInt(1, liv.getId());
        comando.execute();
        con.close();
    }

    /* método de atualizar por ID */
    public void atualizar(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "UPDATE livro SET titulo = ?, autor = ?, sinopse = ?, preco = ?, editora = ?, paginas = ?, volume = ?, saga = ?, idioma = ?, datapublicacao = ?, disponibilidade = ?, categoria = ?, versao = ?, classificacaoindicativa = ?, isbn = ?, caminhoimagem = ? WHERE id = ?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setString(1, liv.getTitulo());
        comando.setString(2, liv.getAutor());
        comando.setString(3, liv.getSinopse());
        comando.setDouble(4, liv.getPreco());
        comando.setString(5, liv.getEditora());
        comando.setInt(6, liv.getPaginas());
        comando.setInt(7, liv.getVolume());
        comando.setString(8, liv.getSaga());
        comando.setString(9, liv.getIdioma());
        comando.setString(10, liv.getDatapublicacao());
        comando.setInt(11, liv.getDisponibilidade());
        comando.setString(12, liv.getCategoria());
        comando.setString(13, liv.getVersao());
        comando.setInt(14, liv.getClassificacaoindicativa());
        comando.setString(15, liv.getIsbn());
        comando.setString(16, liv.getCaminhoImagem());
        comando.setInt(17, liv.getId());
        comando.execute();
        con.close();
    }

    /* método de consultar por ID */
    public Livro consultarID(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "select * from livro where id = ?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setInt(1, liv.getId());
        ResultSet rs = comando.executeQuery();

        Livro L = null;

        if (rs.next()) {
            L = new Livro();
            L.setId(rs.getInt("Id"));
            L.setTitulo(rs.getString("titulo"));
            L.setAutor(rs.getString("autor"));
            L.setSinopse(rs.getString("sinopse"));
            L.setPreco(rs.getDouble("preco"));
            L.setEditora(rs.getString("editora"));
            L.setPaginas(rs.getInt("paginas"));
            L.setVolume(rs.getInt("volume"));
            L.setSaga(rs.getString("saga"));
            L.setIdioma(rs.getString("idioma"));
            L.setDatapublicacao(rs.getString("datapublicacao"));
            L.setDisponibilidade(rs.getInt("disponibilidade"));
            L.setCategoria(rs.getString("categoria"));
            L.setVersao(rs.getString("versao"));
            L.setClassificacaoindicativa(rs.getInt("classificacaoindicativa"));
            L.setIsbn(rs.getString("isbn"));
            L.setCaminhoImagem(rs.getString("caminhoimagem"));
        }
        con.close();
        return L;
    }

    /* método de consultar por Título */
    public Livro consultarTitulo(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "select * from livro where titulo = ?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setString(1, liv.getTitulo());
        ResultSet rs = comando.executeQuery();

        Livro L = null;

        if (rs.next()) {
            L = new Livro();
            L.setId(rs.getInt("Id"));
            L.setTitulo(rs.getString("titulo"));
            L.setAutor(rs.getString("autor"));
            L.setSinopse(rs.getString("sinopse"));
            L.setPreco(rs.getDouble("preco"));
            L.setEditora(rs.getString("editora"));
            L.setPaginas(rs.getInt("paginas"));
            L.setVolume(rs.getInt("volume"));
            L.setSaga(rs.getString("saga"));
            L.setIdioma(rs.getString("idioma"));
            L.setDatapublicacao(rs.getString("datapublicacao"));
            L.setDisponibilidade(rs.getInt("disponibilidade"));
            L.setCategoria(rs.getString("categoria"));
            L.setVersao(rs.getString("versao"));
            L.setClassificacaoindicativa(rs.getInt("classificacaoindicativa"));
            L.setIsbn(rs.getString("isbn"));
            L.setCaminhoImagem(rs.getString("caminhoimagem"));
        }
        con.close();
        return L;
    }

    /* método de consultar todos os livros */
    public List<Livro> consultarTodos() throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "select * from livro";
        PreparedStatement comando = con.prepareStatement(SQL);
        ResultSet rs = comando.executeQuery();

        List<Livro> livros = new ArrayList<>();
        while (rs.next()) {
            Livro L = new Livro();
            L.setId(rs.getInt("id"));
            L.setTitulo(rs.getString("titulo"));
            L.setAutor(rs.getString("autor"));
            L.setSinopse(rs.getString("sinopse"));
            L.setPreco(rs.getDouble("preco"));
            L.setEditora(rs.getString("editora"));
            L.setPaginas(rs.getInt("paginas"));
            L.setVolume(rs.getInt("volume"));
            L.setSaga(rs.getString("saga"));
            L.setIdioma(rs.getString("idioma"));
            L.setDatapublicacao(rs.getString("datapublicacao"));
            L.setDisponibilidade(rs.getInt("disponibilidade"));
            L.setCategoria(rs.getString("categoria"));
            L.setVersao(rs.getString("versao"));
            L.setClassificacaoindicativa(rs.getInt("classificacaoindicativa"));
            L.setIsbn(rs.getString("isbn"));
            L.setCaminhoImagem(rs.getString("caminhoimagem"));
            livros.add(L);
        }
        con.close();
        return livros;
    }
}
