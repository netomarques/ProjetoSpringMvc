
package br.com.ifam.mvc.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
    private List<ItemCompra> itens;
    
    @Column(name = "comtotal")
    private Double total;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "comdata")
    private Calendar data;

    public Compra(Cliente cliente, ArrayList<ItemCompra> itens, Double total) {
        this.cliente = cliente;
        this.itens = itens;
        this.total = total;
    }
    
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

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Calendar getData() {
        return data;
    }

    public void setData(Calendar data) {
        this.data = data;
    }
}
