/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.controller;

import br.com.ifam.mvc.dao.ClienteDao;
import br.com.ifam.mvc.model.Cliente;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Wilson
 */
@Controller
public class ClienteController {
    
    @Autowired
    private ClienteDao clienteDao;
    
    @RequestMapping("/formCadastraCliente")
    public String formCadastraCliente(){
        //Cliente cliente = new Cliente();
        //model.addAttribute("cliente", cliente);
        return "cliente/formularioCadastraCliente";
    }
    
    @RequestMapping("/cadastrarCliente")
    public String cadstrarCliente(Cliente cliente) {
        //System.out.println("CADASTRAR CLIENTE DEPOIS DO FORM");
        //System.out.println("CILENTE: " + cliente.getNome());
        clienteDao.inserirCliente(cliente);
        return "cliente/cliente-cadastrado";
    }
    
    @RequestMapping("/formListaCliente")
    public String formListaCliente(Model model){
        List<Cliente> listaClientes =  clienteDao.listarClientes();
        model.addAttribute("listaClientes", listaClientes);
        return "cliente/listaClientes";
    }
    
    @RequestMapping("/formAlteraCliente")
    public String formAlteraClienteCliente(int id, Model model){
        model.addAttribute("cliente", clienteDao.pesquisarCliente(id));
        return "cliente/formularioAlteraCliente";
    }
    
    @RequestMapping("/alterarCliente")
    public String alterarCliente(Cliente cliente){
        System.out.println("/ALTERACLIENTE");
        clienteDao.atualizarCliente(cliente);
        return "redirect:/formListaCliente";
    }
    
    @RequestMapping("/removerCliente")
    public String removerCliente(int id){
        clienteDao.excluirCliente(id);
        return "redirect:/formListaCliente";
    }
    
}
