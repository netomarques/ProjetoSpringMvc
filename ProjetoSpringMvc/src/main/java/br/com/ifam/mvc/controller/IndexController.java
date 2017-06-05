/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Wilson
 */
@Controller
public class IndexController {
    
    @RequestMapping("/")
    public String index(){
        return  "index";
    }
    
    @RequestMapping("/rodape")
    public String rodape(){
        return  "index/rodape";
    }
    
    @RequestMapping("/topo")
    public String topo(){
        return  "index/topo";
    }    
    
}
