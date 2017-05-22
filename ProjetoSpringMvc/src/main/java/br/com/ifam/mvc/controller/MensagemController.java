package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.MensagemDao;
import br.com.ifam.mvc.model.Mensagem;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MensagemController {
    
    @Autowired
    private MensagemDao mensagemDao;
    
    @RequestMapping("/formCadastraMensagem")
    public String formCadastraMensagem(){
        return "mensagem/formularioCadastraMensagem";
    }
    
    @RequestMapping("/cadastrarMensagem")
    public String cadstrarMensagem(Mensagem mensagem) {
        mensagemDao.inserirMensagem(mensagem);
        return "mensagem/mensagem-cadastrado";
    }
    
    @RequestMapping("/formListaMensagem")
    public String formListaMensagem(Model model){
        List<Mensagem> listaMensagens =  mensagemDao.listarMensagens();
        model.addAttribute("listaMensagens", listaMensagens);
        return "mensagem/listaMensagens";
    }
    
    @RequestMapping("/formAlteraMensagem")
    public String formAlteraMensagem(int id, Model model){
        model.addAttribute("mensagem", mensagemDao.pesquisarMensagem(id));
        return "mensagem/formularioAlteraMensagem";
    }
    
    @RequestMapping("/alterarMensagem")
    public String alterarMensagem(Mensagem mensagem){
        mensagemDao.atualizarMensagem(mensagem);
        return "redirect:/formListaMensagem";
    }
    
    @RequestMapping("/removerMensagem")
    public String removerMensagem(int id){
        mensagemDao.excluirMensagem(id);
        return "redirect:/formListaMensagem";
    }
    
}
