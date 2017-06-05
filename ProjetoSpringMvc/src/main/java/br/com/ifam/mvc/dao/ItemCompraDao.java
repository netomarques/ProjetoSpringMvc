/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Compra;
import br.com.ifam.mvc.model.ItemCompra;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("itemCompraDao")
@Transactional
public class ItemCompraDao extends AbstractDao<Integer, ItemCompra>{

    public ItemCompra pesquisarItemCompra(int id){
        return getByKey(id);
    }
    
    public void inserirItemCompra(ItemCompra item){
        persist(item);
    }
    
    public void excluirItemCompra(int id){
        ItemCompra item = getByKey(id);
        delete(item);
    } 
    
    public List<ItemCompra> listarItens(){
        return createEntityCriteria().list();
    }
    
    public void atualizarCompra(ItemCompra item){
        merge(item);
    }
    
}
