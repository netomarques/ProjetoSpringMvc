package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.CategoriaDao;
import br.com.ifam.mvc.dao.ProdutoDao;
import br.com.ifam.mvc.model.Administrador;
import br.com.ifam.mvc.model.Produto;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


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
    public String cadastrarProduto(@RequestParam("file") MultipartFile file,Produto produto) {
        
        /*if (result.hasErrors()) {
            return "redirect:/formCadastraProduto";
        }*/
        //produto.setCategoria(categoria);
        
        Administrador admin = new Administrador();
        admin.setId(1);
        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get("C:\\Users\\Wilson\\Documents\\NetBeansProjects\\ProjetoSpringMvc\\ProjetoSpringMvc\\src\\main\\webapp\\resources\\img\\produtos\\" + file.getOriginalFilename());
            Files.write(path, bytes);
        } catch (IOException e) {
        }
        
         produto.setImagem(file.getOriginalFilename());
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
        
        model.addAttribute("produto", produtoDao.pesquisarProduto(id));
        
        model.addAttribute("categorias",categoriaDao.listarCategorias());
        
        return "produto/formularioAlteraProduto";
    }
    
    @RequestMapping("/alterarProduto")
    public String alterarProduto(@RequestParam("file") MultipartFile file,Produto produto){
        
        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get("C:\\Users\\Wilson\\Documents\\NetBeansProjects\\ProjetoSpringMvc\\ProjetoSpringMvc\\src\\main\\webapp\\resources\\img\\produtos\\" + file.getOriginalFilename());
            Files.write(path, bytes);
        } catch (IOException e) {
        }
        
         produto.setImagem(file.getOriginalFilename());
         produtoDao.atualizarProduto(produto);
        
        return "redirect:/formListaProduto";
    }
    
    @RequestMapping("/removerProduto")
    public String removerProduto(int id){
        
        produtoDao.excluirProduto(id);
        
        return "redirect:/formListaProduto";
    }
    
    @RequestMapping("/listagemProdutos")
    public String listagemProdutos(Model model){
        
        List<Produto> listaProdutos =  produtoDao.listarProdutos();
        
        model.addAttribute("listaProdutos", listaProdutos);
        
        return "produto/listagemProdutos";
    }
    
    @RequestMapping("/detalheProduto")
    public String detalheProduto(Model model){
        
        return "produto/detalheProduto";
    }
    
}
