package dao;

import dao.DAO;
import dao.DAO;
import dao.connection.DatabaseConnection;
import model.Categorias;
import org.apache.commons.dbutils.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class CategoriasDAO<T extends Categorias> extends DAO<T> {

    public CategoriasDAO() {
        super("categorias");
    }

    @Override
    public boolean saveOrUpdate(Categorias entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + " (nome_categoria) VALUES (?)";
        } else {
            query = "UPDATE " + tableName + " SET nome_categoria = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome_Categoria());

            if (entity.getId() != null) {
                ps.setLong(2, entity.getId());
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


    public List<Categorias> listAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Categorias> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Categorias entity;

            while (rs.next()) {
                entity = new Categorias();

                entity.setId(rs.getLong("id"));
                entity.setNome_Categoria(rs.getString("nome_categoria"));
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
        String query = "DELETE FROM categorias WHERE id = ?";
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
