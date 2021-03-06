package br.com.ifam.mvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="categoria")
public class Categoria {
    
    @Id
    @GeneratedValue
    @Column(name = "catid")
    private int id;
    
    @Column(name = "catdescricao", nullable = false, length = 80)
    private String descricao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

}
