/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Wilson
 */
@Entity
@Table(name = "mensagem")
public class Mensagem {
    
    @Id
    @GeneratedValue
    @Column(name = "msgid")
    private int id;
    
    @Column(name = "msgdescricao", nullable = false, length = 100)
    private String descricao;
    
    @Column(name = "msgtipo", nullable = false, length = 60)
    private String tipo;

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

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
}
