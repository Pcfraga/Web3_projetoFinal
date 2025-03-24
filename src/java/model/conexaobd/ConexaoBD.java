package model.conexaobd;

import java.sql.*;
import javax.swing.JOptionPane;


public class ConexaoBD {

    private Connection conexao;

    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String caminhoDoBD = "jdbc:mysql://localhost:3306/bd_pedcelulares?user=root";
            this.conexao = DriverManager.getConnection(caminhoDoBD);
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro ao conectar o banco - classe ConexaoBD - método getConexao() - Erro: " + e);
        }
        return this.conexao;
    }

}




















































