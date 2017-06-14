/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.ClienteDao;
import br.com.ifam.mvc.dao.CompraDao;
import br.com.ifam.mvc.dao.ItemCompraDao;
import br.com.ifam.mvc.dao.ProdutoDao;
import br.com.ifam.mvc.model.Carrinho;
import br.com.ifam.mvc.model.Cliente;
import br.com.ifam.mvc.model.Compra;
import br.com.ifam.mvc.model.ItemCompra;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    private ClienteDao clienteDao;
    
    @Autowired
    private CompraDao compraDao;
    
    @RequestMapping("/adicionarItemCompra")
    public String adiciona(@RequestParam("id")int id, @RequestParam("quantidade") int qtde){
        
        ItemCompra itemCompra = new ItemCompra();
        itemCompra.setProdutos(produtoDao.pesquisarProduto(id));
        itemCompra.setQuantidade(qtde);
        System.out.println("Item Produto, quantidade: "+ itemCompra.getQuantidade());
        carrinho.adicionarItem(itemCompra);
        
        return "redirect:/listarProdutos";
    }
    
    @RequestMapping("/visualizarCarrinho")
    public String visualizaCarrinho(Model model){
        
        model.addAttribute("carrinho",carrinho);
        
        return "carrinho/visualizarCarrinho";
    }
    
    @RequestMapping("/verCarrinho")
    public String verCarrinho(Model model){
        
        if(carrinho.getCompra()==null){
            carrinho.setCompra(new Compra(clienteDao.pesquisarCliente(1), new ArrayList<ItemCompra>(), 0.0));
        }
        
        model.addAttribute("carrinho",carrinho);
        
        return "carrinho/verCarrinho";
    }
    
    @RequestMapping("/finalizarCompra")
    public String finalizarCompra(){
        //Compra compra = new Compra();
        
        carrinho.getCompra().setCliente(clienteDao.pesquisarCliente(1));
        //compra.setItens(carrinho.getItens());
        
        compraDao.inserirCompra(carrinho.getCompra());
        
        return "redirect:/";
    }
    
    
    
}
