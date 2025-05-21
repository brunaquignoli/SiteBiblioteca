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
 * @author Pedrovisk and Brubs
 */
public class LivroDAO {
    
    public void cadastrar(Livro liv) throws ClassNotFoundException, SQLException { 
        Connection con = conexaosql.getConexao();
        String SQL = "insert into livro (titulo, autor, sinopse, preco, editora, paginas, volume, saga, idioma, datapublicacao, disponibilidade, categoria, versao, classificacaoindicativa, isbn ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
        comando.setInt(10, liv.getDatapublicacao());
        comando.setInt(11, liv.getDisponibilidade());
        comando.setString(12, liv.getCategoria());
        comando.setString(13, liv.getVersao());
        comando.setInt(14, liv.getClassificacaoindicativa());
        comando.setString(15, liv.getIsbn());
        comando.execute();
        con.close();
    }
    
    public void deletarID(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "delete from livro where id = ?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setInt(1, liv.getId());
        comando.execute();
        con.close();
    }
    
    public void atualizar(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "UPDATE livro SET titulo = ?, autor = ?, sinopse = ?, preco = ?, editora = ?, paginas = ?, volume = ?, saga = ?, idioma = ?, datapublicacao = ?, disponibilidade = ?, categoria = ?, versao = ?, classificacaoindicativa = ?, isbn = ? WHERE id = ?";
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
        comando.setInt(10, liv.getDatapublicacao());
        comando.setInt(11, liv.getDisponibilidade());
        comando.setString(12, liv.getCategoria());
        comando.setString(13, liv.getVersao());
        comando.setInt(14, liv.getClassificacaoindicativa());
        comando.setString(15, liv.getIsbn());
        comando.setInt(16, liv.getId());
        comando.execute();
        con.close();
    }
    
    public Livro consultarID(Livro liv) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "select * from livro where id=?";
        PreparedStatement comando = con.prepareStatement(SQL);
        comando.setInt(1, liv.getId());
        ResultSet rs = comando.executeQuery();
        Livro L = new Livro();
        if (rs.next()) {
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
            L.setDatapublicacao(rs.getInt("datapublicacao"));
            L.setDisponibilidade(rs.getInt("disponibilidade"));
            L.setCategoria(rs.getString("categoria"));
            L.setVersao(rs.getString("versao"));
            L.setClassificacaoindicativa(rs.getInt("classificacaoindicativa"));
            L.setIsbn(rs.getString("isbn"));
          
        }
        con.close();
        return L;
    }
    
    public List<Livro> consultarTodos() throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        String SQL = "select * from livro";
        PreparedStatement comando = con.prepareStatement(SQL);
        ResultSet rs = comando.executeQuery();
        List<Livro> Lliv = new ArrayList<>();

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
            L.setDatapublicacao(rs.getInt("datapublicacao"));
            L.setDisponibilidade(rs.getInt("disponibilidade"));
            L.setCategoria(rs.getString("categoria"));
            L.setVersao(rs.getString("versao"));
            L.setClassificacaoindicativa(rs.getInt("classificacaoindicativa"));
            L.setIsbn(rs.getString("isbn"));
            Lliv.add(L);
        }

        con.close();
        return Lliv;
    }
}
