/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Yan
 */
import java.util.Date;
import java.util.List;
public class Compras extends Entity {
    
    private Integer quantidade_compra;
    private Date data_compra;
    private Integer valor_compra;
    private Integer id_fornecedor;
    private Integer id_produto;
    private Integer id_comprador;
    
    private List<Compras> compras;
    
    public Integer getQuantidade_Compra() {
        return quantidade_compra;
    }

    public void setQuantidade_Compra(Integer quantidade_compra) {
        this.quantidade_compra = quantidade_compra;
    }

    public Date getDate() {
        return data_compra;
    }

    public void setDate(Date data_compra) {
        this.data_compra = data_compra;
    }
    
    public Integer getValor_Compra() {
        return valor_compra;
    }

    public void setValor_Compra(Integer valor_compra) {
        this.valor_compra = valor_compra;
    }
    
    public Integer getId_Fornecedor() {
        return id_fornecedor;
    }

    public void setId_Fornecedor(Integer id_fornecedor) {
        this.id_fornecedor = id_fornecedor;
    }
    
    public Integer getId_Produto() {
        return id_produto;
    }

    public void setId_Produto(Integer id_produto) {
        this.id_produto = id_produto;
    }
    
        public Integer getId_Comprador() {
        return id_comprador;
    }

    public void setId_Comprador(Integer id_comprador) {
        this.id_comprador = id_comprador;
    }
    
    public List<Compras> getCompras() {
        return compras;
    }
}
