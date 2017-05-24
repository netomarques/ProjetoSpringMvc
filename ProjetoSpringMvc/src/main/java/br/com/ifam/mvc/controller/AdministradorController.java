package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.AdministradorDao;
import br.com.ifam.mvc.model.Administrador;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdministradorController {
    
    @Autowired
    private AdministradorDao administradorDao;
    
    @RequestMapping("/formCadastraAdministrador")
    public String formCadastraAdministrador(){
        return "administrador/formularioCadastraAdministrador";
    }
    
    @RequestMapping("/cadastrarAdministrador")
    public String cadstrarAdministrador(Administrador administrador) {
        administradorDao.inserirAdministrador(administrador);
        return "redirect:/formListaAdministrador";
    }
    
    @RequestMapping("/formListaAdministrador")
    public String formListaAdministrador(Model model){
        List<Administrador> listaAdministradores =  administradorDao.listarAdministradores();
        model.addAttribute("listaAdministradores", listaAdministradores);
        return "administrador/listaAdministradores";
    }
    
    @RequestMapping("/formAlteraAdministrador")
    public String formAlteraAdministrador(int id, Model model){
        model.addAttribute("administrador", administradorDao.pesquisarAdministrador(id));
        return "administrador/formularioAlteraAdministrador";
    }
    
    @RequestMapping("/alterarAdministrador")
    public String alterarCliente(Administrador administrador){
        administradorDao.atualizarAdministrador(administrador);
        return "redirect:/formListaAdministrador";
    }
    
    @RequestMapping("/removerAdministrador")
    public String removerAdministrador(int id){
        administradorDao.excluirAdministrador(id);
        return "redirect:/formListaAdministrador";
    }
    
}
