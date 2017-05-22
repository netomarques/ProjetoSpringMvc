package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Mensagem;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("mensagemDao")
@Transactional
public class MensagemDao extends AbstractDao<Integer, Mensagem>{

    public Mensagem pesquisarMensagem(int id){
        return getByKey(id);
    }
    
    public void inserirMensagem(Mensagem mensagem){
        persist(mensagem);
    }
    
    public void excluirMensagem(int id){
        Mensagem mensagem = getByKey(id);
        delete(mensagem);
    } 
    
    public List<Mensagem> listarMensagens(){
        return createEntityCriteria().list();
    }
    
    public void atualizarMensagem(Mensagem mensagem){
        merge(mensagem);
    }
    
}
