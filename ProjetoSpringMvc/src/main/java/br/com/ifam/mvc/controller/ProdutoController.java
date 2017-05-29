package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.CategoriaDao;
import br.com.ifam.mvc.dao.ProdutoDao;
import br.com.ifam.mvc.model.Administrador;
import br.com.ifam.mvc.model.Produto;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProdutoController {
    
    @Autowired
    private ProdutoDao produtoDao;
    
    @Autowired
    private CategoriaDao categoriaDao;
    
    @RequestMapping("/formCadastraProduto")
    public String formCadastraProduto(Model model){
        
        model.addAttribute("categorias",categoriaDao.listarCategorias());
        
        return "produto/formularioCadastraProduto";
    }
    
    @RequestMapping("/cadastrarProduto")
    public String cadastrarProduto(Produto produto) {
        
        /*if (result.hasErrors()) {
            return "redirect:/formCadastraProduto";
        }*/
        //produto.setCategoria(categoria);
        
        Administrador admin = new Administrador();
        admin.setId(1);
        
        produto.setAdministrador(admin);
        
        produtoDao.inserirProduto(produto);
        
        return "redirect:/formListaProduto";
    }
    
    @RequestMapping("/formListaProduto")
    public String formListaProduto(Model model){
        
        List<Produto> listaProdutos =  produtoDao.listarProdutos();
        
        model.addAttribute("listaProdutos", listaProdutos);
        
        return "produto/listaProdutos";
    }
    
    @RequestMapping("/formAlteraProduto")
    public String formAlteraProduto(int id, Model model){
        //System.out.println("Administrador: "+ produto.getAdministrador().getId());
        //System.out.println("Administrador: "+ produto.getAdministrador().getNome());
        //model.addAttribute("administrador", new Administrador());
        
        model.addAttribute("produto", produtoDao.pesquisarProduto(id));
        
        model.addAttribute("categorias",categoriaDao.listarCategorias());
        
        return "produto/formularioAlteraProduto";
    }
    
    @RequestMapping("/alterarProduto")
    public String alterarProduto(Produto produto){
        System.out.println("Produto id: "+ produto.getAdministrador());
        
        produtoDao.atualizarProduto(produto);
        
        return "redirect:/formListaProduto";
    }
    
    @RequestMapping("/removerProduto")
    public String removerProduto(int id){
        
        produtoDao.excluirProduto(id);
        
        return "redirect:/formListaProduto";
    }
    
}
