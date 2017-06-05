
package br.com.ifam.mvc.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="compra")
public class Compra implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "comid")
    private int id;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "comcliid")
    private Cliente cliente;
    
    @OneToMany(mappedBy = "compra", cascade = CascadeType.PERSIST)
    private List<ItemCompra> itens = new ArrayList<ItemCompra>();
    
    /*@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "comdata")
    private Calendar data;*/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public List<ItemCompra> getItens() {
        return itens;
    }

    public void setItens(List<ItemCompra> itens) {
        this.itens = itens;
    }
    
}
