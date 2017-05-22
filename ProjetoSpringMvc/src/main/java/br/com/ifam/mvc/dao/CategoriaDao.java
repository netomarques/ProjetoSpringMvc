/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Categoria;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("categoriaDao")
@Transactional
public class CategoriaDao extends AbstractDao<Integer, Categoria>{

    public Categoria pesquisarCategoria(int id){
        return getByKey(id);
    }
    
    public void inserirCategoria(Categoria categoria){
        persist(categoria);
    }
    
    public void excluirCategoria(int id){
        Categoria categoria = getByKey(id);
        delete(categoria);
    } 
    
    public List<Categoria> listarCategorias(){
        return createEntityCriteria().list();
    }
    
    public void atualizarCategoria(Categoria categoria){
        merge(categoria);
    }
    
}
