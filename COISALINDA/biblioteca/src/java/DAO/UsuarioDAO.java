/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Usuario;
import tools.conexaosql;

/**
 *
 * @author bruna and pedrovisk
 */
public class UsuarioDAO {

    /**
     * Método cadastrar para usuário *
     */
    public void cadastrar(Usuario u) throws ClassNotFoundException, SQLException {
        Connection con = conexaosql.getConexao();
        PreparedStatement comando = con.prepareStatement("insert into tb_usuario (login, senha) values (?,?)");
        comando.setString(1, u.getEmail());
        comando.setString(2, u.getSenha());
        comando.execute();
        con.close();
    }
}
