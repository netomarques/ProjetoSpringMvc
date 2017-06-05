
package br.com.ifam.mvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="itemcompra")
public class ItemCompra implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "itid")
    private int id;
    
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "itcomid")
    private Compra compra;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "itproid")
    private Produto produto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProdutos(Produto produto) {
        this.produto = produto;
    }
    
}
