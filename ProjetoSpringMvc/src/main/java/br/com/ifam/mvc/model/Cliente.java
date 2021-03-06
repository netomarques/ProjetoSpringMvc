package br.com.ifam.mvc.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="cliente")
public class Cliente implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "cliid")
    private int id;
    
    @NotBlank(message= "Nome é obrigatório")
    @Column(name = "clinome", nullable = false, length = 80)
    private String nome;
    
    @NotBlank(message= "Login é obrigatório")
    @Column(name = "clilogin", nullable = false, length = 60, unique = true)
    private String login;
    
    @NotBlank(message= "Senha é obrigatória")
    @Column(name = "clisenha", nullable = false, length = 60)
    private String senha;
    
    @NotNull(message= "Informe o sexo")
    @Enumerated(EnumType.STRING)
    @Column(name = "clisexo", nullable=false, length = 10)
    private Sexo sexo;
    
    @OneToMany(mappedBy = "cliente")
    private List<Compra> compras;

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
    
    public Sexo getSexo() {
        return sexo;
    }

    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    public List<Compra> getCompras() {
        return compras;
    }

    public void setCompras(List<Compra> compras) {
        this.compras = compras;
    }
    
}
