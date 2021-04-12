/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.connection.DatabaseConnection;
import model.Vendas;
import org.apache.commons.dbutils.DbUtils;

import dao.ProdutosDAO;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import model.Cliente;
import model.Produtos;

/**
 *
 * @author Yan
 */
public class VendasDAO<T extends Vendas> extends DAO<T> {

    public VendasDAO() {
        super("vendas");
    }

    @Override
    public boolean saveOrUpdate(Vendas entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        ProdutosDAO dao = new ProdutosDAO();
        Produtos produto = new Produtos();
        produto = dao.findByProdutoId(entity.getId_Produto());

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + " (quantidade_venda, data_venda, valor_venda, id_cliente, id_produto, id_vendedor) VALUES (?,?,?,?,?,?)";
        } else {
            query = "UPDATE " + tableName + " SET quantidade_venda = ?, data_venda = ?, valor_venda = ?, id_cliente = ?, id_produto = ?, id_vendedor = ? WHERE id = ?";
        }

        try {
            if (entity.getQuantidade_Venda() < produto.getQuantidade_Disponivel()) {
                produto.setQuantidade_Disponivel(produto.getQuantidade_Disponivel() - entity.getQuantidade_Venda());
                dao.saveOrUpdate(produto);
                ps = conn.prepareStatement(query);

                ps.setInt(1, entity.getQuantidade_Venda());
                ps.setDate(2, new java.sql.Date(entity.getDate().getTime()));
                ps.setDouble(3, entity.getValor_Venda());
                ps.setInt(4, entity.getId_Cliente());
                ps.setInt(5, entity.getId_Produto());
                ps.setInt(6, entity.getId_Vendedor());
                if (entity.getId() != null) {
                    ps.setLong(7, entity.getId());
                    ps.executeUpdate();
                } else {
                    ps.execute();
                }
            } else {
                out.println("Não se pode vender mais de um produto do que o disponível em estoque! ");
                return false;

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

    public Optional<Vendas> listById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Vendas entity = new Vendas();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setQuantidade_Venda(rs.getInt("quantidade_venda"));
                entity.setDate(rs.getDate("data_venda"));
                entity.setValor_Venda(rs.getDouble("valor_venda"));
                entity.setId_Cliente(rs.getInt("id_cliente"));
                entity.setId_Produto(rs.getInt("id_produto"));
                entity.setId_Vendedor(rs.getInt("id_vendedor"));

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

    public List<Vendas> listAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Vendas> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Vendas entity;

            while (rs.next()) {
                entity = new Vendas();
                entity.setId(rs.getLong("id"));
                entity.setQuantidade_Venda(rs.getInt("quantidade_venda"));
                entity.setDate(rs.getDate("data_venda"));
                entity.setValor_Venda(rs.getDouble("valor_venda"));
                entity.setId_Cliente(rs.getInt("id_cliente"));
                entity.setId_Produto(rs.getInt("id_produto"));
                entity.setId_Vendedor(rs.getInt("id_vendedor"));

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
