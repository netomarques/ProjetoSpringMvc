/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Produto;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("produtoDao")
@Transactional
public class ProdutoDao extends AbstractDao<Integer, Produto>{

    public Produto pesquisarProduto(int id){
        return getByKey(id);
    }
    
    public void inserirProduto(Produto produto){
        persist(produto);
    }
    
    public void excluirProduto(int id){
        Produto produto = getByKey(id);
        delete(produto);
    } 
    
    public List<Produto> listarProdutos(){
        return createEntityCriteria().list();
    }
    
    public void atualizarProduto(Produto produto){
        merge(produto);
    }
    
}
