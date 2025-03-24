package model.dao;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Cliente;

public class ClienteDAO {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;

    public void cadastrarClientes(Cliente objCliente) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "insert into tb_clientes(nome,telefone,cpf,email)"
                + "values(?,?,?,?)";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objCliente.getNome());
            this.ps.setString(2, objCliente.getTelefone());
            this.ps.setString(3, objCliente.getCpf());
            this.ps.setString(4, objCliente.getEmail());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe ClienteDAO - método cadastrarCliente() - Erro: " + e);
        }
    }

    public ArrayList<Cliente> listarClientes() {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "SELECT * FROM tb_clientes";
        ArrayList<Cliente> listaDeClientes = new ArrayList<>();

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.resultado = this.ps.executeQuery(sql);

            while (this.resultado.next()) {
                Cliente objCliente = new Cliente();

                objCliente.setId(this.resultado.getInt("pkid_cliente"));
                objCliente.setNome(this.resultado.getString("nome"));
                objCliente.setTelefone(this.resultado.getString("telefone"));
                objCliente.setCpf(this.resultado.getString("cpf"));
                objCliente.setEmail(this.resultado.getString("email"));

                listaDeClientes.add(objCliente);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao listar do banco - classe ClienteDAO - método listarCliente() - Erro: " + e);
        }
        return listaDeClientes;
    }

}
