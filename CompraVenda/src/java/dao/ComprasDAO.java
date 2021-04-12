/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.connection.DatabaseConnection;
import model.Compras;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import model.Produtos;

/**
 *
 * @author Isaac
 */
public class ComprasDAO<T extends Compras> extends DAO<T> {

    public ComprasDAO() {
        super("compras");
    }

    @Override
    public boolean saveOrUpdate(Compras entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        ProdutosDAO dao = new ProdutosDAO();
        Produtos produto = new Produtos();
        produto = dao.findByProdutoId(entity.getId_Produto());

        produto.setQuantidade_Disponivel(produto.getQuantidade_Disponivel() + entity.getQuantidade_Compra());
        produto.setPreco_Compra(Double.valueOf(entity.getValor_Compra() / entity.getQuantidade_Compra()));

        dao.saveOrUpdate(produto);

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + " (quantidade_compra, data_compra, valor_compra, id_fornecedor, id_produto, id_comprador) VALUES (?,?,?,?,?,?)";
        } else {
            query = "UPDATE " + tableName + " SET quantidade_compra = ?, data_compra = ?, valor_compra = ?, id_fornecedor = ?, id_produto = ?, id_comprador = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, entity.getQuantidade_Compra());
            ps.setDate(2, new java.sql.Date(entity.getDate().getTime()));
            ps.setInt(3, entity.getValor_Compra());
            ps.setInt(4, entity.getId_Fornecedor());
            ps.setInt(5, entity.getId_Produto());
            ps.setInt(6, entity.getId_Comprador());
            if (entity.getId() != null) {
                ps.setLong(7, entity.getId());
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

    public Optional<Compras> listById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Compras entity = new Compras();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setQuantidade_Compra(rs.getInt("quantidade_compra"));
                entity.setDate(rs.getDate("data_compra"));
                entity.setValor_Compra(rs.getInt("valor_compra"));
                entity.setId_Fornecedor(rs.getInt("id_fornecedor"));
                entity.setId_Produto(rs.getInt("id_produto"));
                entity.setId_Comprador(rs.getInt("id_comprador"));

                return Optional.of(entity);
            } else {
                return Optional.empty();
            }

        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }
    }

    public List<Compras> listAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Compras> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Compras entity;

            while (rs.next()) {
                entity = new Compras();
                entity.setId(rs.getLong("id"));
                entity.setQuantidade_Compra(rs.getInt("quantidade_compra"));
                entity.setDate(rs.getDate("data_compra"));
                entity.setValor_Compra(rs.getInt("valor_compra"));
                entity.setId_Fornecedor(rs.getInt("id_fornecedor"));
                entity.setId_Produto(rs.getInt("id_produto"));
                entity.setId_Comprador(rs.getInt("id_comprador"));

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
        String query = "DELETE FROM " + tableName + " WHERE id = ?";
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
