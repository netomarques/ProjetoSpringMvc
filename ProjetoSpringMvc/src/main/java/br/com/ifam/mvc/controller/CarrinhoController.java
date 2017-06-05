/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.CompraDao;
import br.com.ifam.mvc.dao.ItemCompraDao;
import br.com.ifam.mvc.dao.ProdutoDao;
import br.com.ifam.mvc.model.Carrinho;
import br.com.ifam.mvc.model.Cliente;
import br.com.ifam.mvc.model.Compra;
import br.com.ifam.mvc.model.ItemCompra;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author wilson.neto
 */

@Controller
public class CarrinhoController {
    
    @Autowired
    private Carrinho carrinho;
    
    @Autowired
    private ProdutoDao produtoDao;
    
    @Autowired
    private CompraDao compraDao;
    
    @Autowired
    private ItemCompraDao itemCompraDao;
    
    @RequestMapping("/carrinho")
    public String adiciona(int id,ItemCompra item){
        item.setProdutos(produtoDao.pesquisarProduto(id));
        System.out.println("Item Produto "+ item.getProduto().getId());
        carrinho.adiciona(item);
        
        return "redirect:/listagemProdutos";
    }
    
    @RequestMapping("/visualizarCarrinho")
    public String visualizaCarrinho(Model model){
        model.addAttribute("carrinho",carrinho);
        return "carrinho/visualizarCarrinho";
    }
    
    @RequestMapping("/finalizarCompra")
    public String finalizarCompra(){
        Compra compra = new Compra();
        Cliente cliente = new Cliente();
        cliente.setId(1);
        compra.setCliente(cliente);
        //compra.setItens(carrinho.getItens());
        
        for(ItemCompra  it : carrinho.getItens()){
            System.out.println(it.getProduto().getNome());
            it.setCompra(compra);
            itemCompraDao.inserirItemCompra(it);
        }
        compra.setItens(carrinho.getItens());
        compraDao.inserirCompra(compra);
        
        return "redirect:/formListaCliente";
    }
    
    
    
}
