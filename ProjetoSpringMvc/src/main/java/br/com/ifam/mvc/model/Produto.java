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
    
    @NotBlank(message= "Nome é obrigatório")
    @Column(name = "pronome", nullable = false, length = 80)
    private String nome;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "procatid")
    private Categoria categoria;
    
    @ManyToOne(optional=false)
    @JoinColumn(name = "proadmid")
    private Administrador administrador;
    
    @Column(name = "proimagem", nullable = false, length = 400)
    private String imagem;
    
    @Column(name = "prodescricao", length = 100)
    private String descricao;
    
    @Column(name = "propreco", nullable = false, scale = 2)
    private Double preco;

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

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }
    
}
