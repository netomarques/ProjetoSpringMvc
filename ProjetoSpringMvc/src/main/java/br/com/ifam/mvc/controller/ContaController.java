package br.com.ifam.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Junnio
 */
@Controller
public class ContaController {

    @RequestMapping("/acessarConta")
    public String formCadastraProduto(Model model) {
        
        return "conta/acessarMinhaConta";
    }
    
    
}
