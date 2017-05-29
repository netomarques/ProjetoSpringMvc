package br.com.ifam.mvc.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="produto")
public class Produto implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "proid")
    private int id;
    
    //@NotBlank(message= "Nome é obrigatório")
    @Column(name = "pronome", nullable = false, length = 80)
    private String nome;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "procatid")
    private Categoria categoria;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "proadmid")
    private Administrador administrador;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Administrador getAdministrador() {
        return administrador;
    }

    public void setAdministrador(Administrador administrador) {
        this.administrador = administrador;
    }
    
}
