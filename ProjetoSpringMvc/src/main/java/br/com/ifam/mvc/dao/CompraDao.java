/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Compra;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("compraDao")
@Transactional
public class CompraDao extends AbstractDao<Integer, Compra>{

    public Compra pesquisarCompra(int id){
        return getByKey(id);
    }
    
    public void inserirCompra(Compra compra){
        persist(compra);
    }
    
    public void excluirCompra(int id){
        Compra compra = getByKey(id);
        delete(compra);
    } 
    
    public List<Compra> listarCompras(){
        return createEntityCriteria().list();
    }
    
    public void atualizarCompra(Compra compra){
        merge(compra);
    }
    
}
