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
public class Vendas extends Entity {
    
    private Integer quantidade_venda;
    private Date data_venda;
    private Double valor_venda;
    private Integer id_cliente;
    private Integer id_produto;
    private Integer id_vendedor;
    
    private List<Vendas> vendas;
    
    public Integer getQuantidade_Venda() {
        return quantidade_venda;
    }

    public void setQuantidade_Venda(Integer quantidade_venda) {
        this.quantidade_venda = quantidade_venda;
    }

    public Date getDate() {
        return data_venda;
    }

    public void setDate(Date data_venda) {
        this.data_venda = data_venda;
    }
    
    public Double getValor_Venda() {
        return valor_venda;
    }

    public void setValor_Venda(Double valor_venda) {
        this.valor_venda = valor_venda;
    }
    
    public Integer getId_Cliente() {
        return id_cliente;
    }

    public void setId_Cliente(Integer id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    public Integer getId_Produto() {
        return id_produto;
    }

    public void setId_Produto(Integer id_produto) {
        this.id_produto = id_produto;
    }
    
        public Integer getId_Vendedor() {
        return id_vendedor;
    }

    public void setId_Vendedor(Integer id_vendedor) {
        this.id_vendedor = id_vendedor;
    }
    
    public List<Vendas> getVendas() {
        return vendas;
    }

    public void setComentarios(List<Vendas> vendas) {
        this.vendas = vendas;
    }
}
