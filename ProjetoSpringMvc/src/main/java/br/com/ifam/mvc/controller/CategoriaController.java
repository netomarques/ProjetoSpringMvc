package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.CategoriaDao;
import br.com.ifam.mvc.model.Categoria;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CategoriaController {
    
    @Autowired
    private CategoriaDao categoriaDao;
    
    @RequestMapping("/formCadastraCategoria")
    public String formCadastraCategoria(){
        return "categoria/formularioCadastraCategoria";
    }
    
    @RequestMapping("/cadastrarCategoria")
    public String cadstrarCategoria(Categoria categoria) {
        categoriaDao.inserirCategoria(categoria);
        return "categoria/categoria-cadastrado";
    }
    
    @RequestMapping("/formListaCategoria")
    public String formListaCategoria(Model model){
        List<Categoria> listaCategorias =  categoriaDao.listarCategorias();
        model.addAttribute("listaCategorias", listaCategorias);
        return "categoria/listaCategorias";
    }
    
    @RequestMapping("/formAlteraCategoria")
    public String formAlteraCategoria(int id, Model model){
        model.addAttribute("categoria", categoriaDao.pesquisarCategoria(id));
        return "categoria/formularioAlteraCategoria";
    }
    
    @RequestMapping("/alterarCategoria")
    public String alterarCategoria(Categoria categoria){
        categoriaDao.atualizarCategoria(categoria);
        return "redirect:/formListaCategoria";
    }
    
    @RequestMapping("/removerCategoria")
    public String removerCategoria(int id){
        categoriaDao.excluirCategoria(id);
        return "redirect:/formListaCategoria";
    }
    
}
