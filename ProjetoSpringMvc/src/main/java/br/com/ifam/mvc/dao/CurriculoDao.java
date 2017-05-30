package br.com.ifam.mvc.dao;

import br.com.ifam.mvc.model.Curriculo;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("curriculoDao")
@Transactional
public class CurriculoDao extends AbstractDao<Integer, Curriculo>{

    public Curriculo pesquisarCurriculo(int id){
        return getByKey(id);
    }
    
    public void inserirCurriculo(Curriculo curriculo){
        persist(curriculo);
    }
    
    public void excluirCurriculo(int id){
        Curriculo curriculo = getByKey(id);
        delete(curriculo);
    } 
    
    public List<Curriculo> listarCurriculos(){
        return createEntityCriteria().list();
    }
    
    public void atualizarCurriculo(Curriculo curriculo){
        merge(curriculo);
    }
    
}
