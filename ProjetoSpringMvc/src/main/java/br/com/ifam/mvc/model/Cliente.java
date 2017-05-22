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
@Table(name="cliente")
public class Cliente {
    
    @Id
    @GeneratedValue
    @Column(name = "cliid")
    private int id;
    
    @Column(name = "clinome", nullable = false, length = 80)
    private String nome;
    
    @Column(name = "clilogin", nullable = false,length = 60)
    private String login;
    
    @Column(name = "clisenha", nullable = false, length =60)
    private String senha;

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

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}