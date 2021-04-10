package dao;

import dao.DAO;
import dao.DAO;
import dao.connection.DatabaseConnection;
import model.Fornecedores;
import org.apache.commons.dbutils.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class FornecedoresDAO<T extends Fornecedores> extends DAO<T> {

    public FornecedoresDAO() {
        super("fornecedores");
    }

    @Override
    public boolean saveOrUpdate(Fornecedores entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + " (razao_social, cnpj, endereco, bairro, cidade, uf, cep, telefone, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET razao_social = ?, cnpj = ?, endereco = ?, bairro = ?, cidade = ?, uf = ?, cep = ?, telefone = ?, email = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getRazao_Social());
            ps.setString(2, entity.getCnpj());
            ps.setString(3, entity.getEndereco());
            ps.setString(4, entity.getBairro());
            ps.setString(5, entity.getCidade());
            ps.setString(6, entity.getUf());
            ps.setString(7, entity.getCep());
            ps.setString(8, entity.getTelefone());
            ps.setString(9, entity.getEmail());

            if (entity.getId() != null) {
                ps.setLong(10, entity.getId());
                ps.executeUpdate();
            } else {
                ps.execute();
            }

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }


    public List<Fornecedores> listAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Fornecedores> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Fornecedores entity;

            while (rs.next()) {
                entity = new Fornecedores();

                entity.setId(rs.getLong("id"));
                entity.setRazao_Social(rs.getString("razao_social"));
                entity.setCnpj(rs.getString("cnpj"));
                entity.setEndereco(rs.getString("endereco"));
                entity.setBairro(rs.getString("bairro"));
                entity.setCidade(rs.getString("cidade"));
                entity.setUf(rs.getString("uf"));
                entity.setCep(rs.getString("cep"));
                entity.setTelefone(rs.getString("telefone"));
                entity.setEmail(rs.getString("email"));
                list.add(entity);                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }

        return list;
    }

    @Override
    public boolean delete(Long id) {
        String query = "DELETE FROM fornecedores WHERE id = ?";
        PreparedStatement ps = null;
        Connection conn = DatabaseConnection.getConn();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            ps.execute();

            return super.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }

    @Override
    public Optional<T> findById(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<T> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
