package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.CurriculoDao;
import br.com.ifam.mvc.model.Curriculo;
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
public class CurriculoController {
    
    @Autowired
    private CurriculoDao curriculoDao;
    
    @RequestMapping("/formCadastraCurriculo")
    public String formCadastraCurriculo(){
        return "curriculo/formularioCadastraCurriculo";
    }
    
    @RequestMapping("/cadastrarCurriculo")
    public String cadastrarProduto(@RequestParam("file") MultipartFile file, Curriculo curriculo) {

        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get("C:\\Users\\Wilson\\Documents\\NetBeansProjects\\ProjetoSpringMvc\\ProjetoSpringMvc\\src\\main\\webapp\\resources\\curriculo\\" + file.getOriginalFilename());
            Files.write(path, bytes);
        } catch (IOException e) {
        }
        
         curriculo.setArquivo(file.getOriginalFilename());
         curriculoDao.inserirCurriculo(curriculo);
         
        return "redirect:/formListaCurriculo";
    }
    
    @RequestMapping("/formListaCurriculo")
    public String formListaCurriculo(Model model){
        List<Curriculo> listaCurriculos =  curriculoDao.listarCurriculos();
        model.addAttribute("listaCurriculos", listaCurriculos);
        return "curriculo/listaCurriculos";
    }
    
    @RequestMapping("/formAlteraCurriculo")
    public String formAlteraCurriculo(int id, Model model){
        model.addAttribute("curriculo", curriculoDao.pesquisarCurriculo(id));
        return "curriculo/formularioAlteraCurriculo";
    }
    
    @RequestMapping("/alterarCurriculo")
    public String alterarCurriculo(Curriculo curriculo){
        curriculoDao.atualizarCurriculo(curriculo);
        return "redirect:/formListaCurriculo";
    }
    
    @RequestMapping("/removerCurriculo")
    public String removerMensagem(int id){
        curriculoDao.excluirCurriculo(id);
        return "redirect:/formListaCurriculo";
    }
    
}
