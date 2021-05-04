package dao;

import dao.DAO;
import dao.connection.DatabaseConnection;
import model.Produtos;
import org.apache.commons.dbutils.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ProdutosDAO<T extends Produtos> extends DAO<T> {

    public ProdutosDAO() {
        super("produtos");
    }

    @Override
    public boolean saveOrUpdate(Produtos entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + " (nome_produto, descricao, preco_compra, preco_venda, quantidade_disponível, liberado_venda, id_categoria) VALUES (?, ?, ?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET nome_produto = ?, descricao = ?, preco_compra = ?, preco_venda = ?, quantidade_disponível = ?, liberado_venda = ?, id_categoria = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome_Produto());
            ps.setString(2, entity.getDescricao());
            ps.setDouble(3, entity.getPreco_Compra());
            ps.setDouble(4, entity.getPreco_Venda());
            ps.setInt(5, entity.getQuantidade_Disponivel());
            ps.setString(6, entity.getLiberado_Venda());
            ps.setInt(7, entity.getId_Categoria());

            if (entity.getId() != null) {
                //Edita pra disponivel pra venda
                Produtos p = findByProdutoId(entity.getId().intValue());
                ps.setString(1, p.getNome_Produto());
                ps.setString(2, p.getDescricao());
                ps.setDouble(3, entity.getPreco_Compra());
                ps.setDouble(4, p.getPreco_Venda());
                ps.setInt(5, entity.getQuantidade_Disponivel());
                ps.setInt(7, p.getId_Categoria());                
                ps.setLong(8, entity.getId());
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


    public List<Produtos> listAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Produtos> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Produtos entity;

            while (rs.next()) {
                entity = new Produtos();

                entity.setId(rs.getLong("id"));
                entity.setNome_Produto(rs.getString("nome_produto"));
                entity.setDescricao(rs.getString("descricao"));
                entity.setPreco_Compra(rs.getDouble("preco_compra"));
                entity.setPreco_Venda(rs.getDouble("preco_venda"));
                entity.setQuantidade_Disponivel(rs.getInt("quantidade_disponível"));
                entity.setLiberado_Venda(rs.getString("liberado_venda"));
                entity.setId_Categoria(rs.getInt("id_categoria"));
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
    
    public List<Produtos> listAllDisponiveis() {
        String query = "SELECT * FROM " + tableName + " WHERE quantidade_disponível > 0 AND liberado_venda = 'S'";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Produtos> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Produtos entity;

            while (rs.next()) {
                entity = new Produtos();

                entity.setId(rs.getLong("id"));
                entity.setNome_Produto(rs.getString("nome_produto"));
                entity.setDescricao(rs.getString("descricao"));
                entity.setPreco_Compra(rs.getDouble("preco_compra"));
                entity.setPreco_Venda(rs.getDouble("preco_venda"));
                entity.setQuantidade_Disponivel(rs.getInt("quantidade_disponível"));
                entity.setLiberado_Venda(rs.getString("liberado_venda"));
                entity.setId_Categoria(rs.getInt("id_categoria"));
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
    
    public Produtos findByProdutoId(Integer id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Produtos entity = new Produtos();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {               
                entity.setId(rs.getLong("id"));
                entity.setNome_Produto(rs.getString("nome_produto"));
                entity.setDescricao(rs.getString("descricao"));
                entity.setPreco_Compra(rs.getDouble("preco_compra"));
                entity.setPreco_Venda(rs.getDouble("preco_venda"));
                entity.setQuantidade_Disponivel(rs.getInt("quantidade_disponível"));
                entity.setLiberado_Venda(rs.getString("liberado_venda"));
                entity.setId_Categoria(rs.getInt("id_categoria"));

                return entity;
            } else {
                return entity;
            }
        } catch (SQLException e) {
            e.printStackTrace();

            return entity;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }
    }
    
    public Optional<Produtos> listById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Produtos entity = new Produtos();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(rs.getLong("id"));
                entity.setNome_Produto(rs.getString("nome_produto"));
                entity.setDescricao(rs.getString("descricao"));
                entity.setPreco_Compra(rs.getDouble("preco_compra"));
                entity.setPreco_Venda(rs.getDouble("preco_venda"));
                entity.setQuantidade_Disponivel(rs.getInt("quantidade_disponível"));
                entity.setLiberado_Venda(rs.getString("liberado_venda"));
                entity.setId_Categoria(rs.getInt("id_categoria"));

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

    @Override
    public boolean delete(Long id) {
        String query = "DELETE FROM artigo WHERE id = ?";
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
