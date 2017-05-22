/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Cliente;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("clienteDao")
@Transactional
public class ClienteDao extends AbstractDao<Integer, Cliente>{

    public Cliente pesquisarCliente(int id){
        return getByKey(id);
    }
    
    public void inserirCliente(Cliente cliente){
        System.out.println("INSERIR CLIENTE DAO");
        persist(cliente);
    }
    
    public void excluirCliente(int id){
        Cliente cliente = getByKey(id);
        delete(cliente);
    } 
    
    public List<Cliente> listarClientes(){
        return createEntityCriteria().list();
    }
    
    public void atualizarCliente(Cliente cliente){
        merge(cliente);
    }
    
}
