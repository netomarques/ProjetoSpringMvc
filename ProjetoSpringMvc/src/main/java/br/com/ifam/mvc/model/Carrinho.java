
package br.com.ifam.mvc.model;

import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.SessionScoped;
import org.springframework.stereotype.Component;

@Component
@SessionScoped
public class Carrinho {
    
    private Compra compra;
    
    private Double total = 0.0;
    
    public Compra getCompra(){
        return compra;
    }
    
    public void setCompra(Compra compra){
        this.compra = compra;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
    
    public void adicionarItem(ItemCompra item){
        item.setCompra(compra);
        compra.getItens().add(item);
        total+=item.getProduto().getPreco() * item.getQuantidade();
        compra.setTotal(total);
    }
    
    public void removeItem(ItemCompra item){
        compra.getItens().remove(item);
        total-=item.getProduto().getPreco() * item.getQuantidade();
        compra.setTotal(total);
    }
    
    public Integer getTotalDeItens(){
        return compra.getItens().size();
    }
    
}
