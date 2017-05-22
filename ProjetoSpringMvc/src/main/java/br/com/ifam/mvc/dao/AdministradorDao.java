/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Administrador;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Wilson
 */
@Repository("administradorDao")
@Transactional
public class AdministradorDao extends AbstractDao<Integer, Administrador>{

    public Administrador pesquisarAdministrador(int id){
        return getByKey(id);
    }
    
    public void inserirAdministrador(Administrador administrador){
        persist(administrador);
    }
    
    public void excluirAdministrador(int id){
        Administrador administrador = getByKey(id);
        delete(administrador);
    } 
    
    public List<Administrador> listarAdministradores(){
        return createEntityCriteria().list();
    }
    
    public void atualizarAdministrador(Administrador administrador){
        merge(administrador);
    }
    
}
