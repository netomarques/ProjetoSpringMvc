
package br.com.ifam.mvc.model;

import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.SessionScoped;
import org.springframework.stereotype.Component;

@Component
@SessionScoped
public class Carrinho {
    
    private List<ItemCompra> itens = new ArrayList<>();
    
    private Double total = 0.0;

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
    
    public void adiciona(ItemCompra item){
        itens.add(item);
        total+=item.getProduto().getPreco() * item.getQuantidade();
    }
    
    public Integer getTotalDeItens(){
        return itens.size();
    }
    
}
