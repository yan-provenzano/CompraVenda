package model;

import model.Entity;

public class Produtos extends Entity {

 
    private String nome_produto;
    private String descricao;
    private Double preco_compra;
    private Double preco_venda;
    private Integer quantidade_disponível;
    private String liberado_venda;
    private Integer id_categoria;
  



    public String getNome_Produto() {
        return nome_produto;
    }

    public void setNome_Produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPreco_Compra() {
        return preco_compra;
    }

    public void setPreco_Compra(Double preco_compra) {
        this.preco_compra = preco_compra;
    }

    public Double getPreco_Venda() {
        return preco_venda;
    }

    public void setPreco_Venda(Double preco_venda) {
        this.preco_venda = preco_venda;
    }
    
   public Integer getQuantidade_Disponivel() {
        return quantidade_disponível;
    }

    public void setQuantidade_Disponivel(Integer quantidade_disponível) {
        this.quantidade_disponível = quantidade_disponível;
    }
     public String getLiberado_Venda() {
        return liberado_venda;
    }

    public void setLiberado_Venda(String liberado_venda) {
        this.liberado_venda = liberado_venda;
    }
     public Integer getId_Categoria() {
        return id_categoria;
    }

    public void setId_Categoria(Integer id_categoria) {
        this.id_categoria = id_categoria;
    }
}
