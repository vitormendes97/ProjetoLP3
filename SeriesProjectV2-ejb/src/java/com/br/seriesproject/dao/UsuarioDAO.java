/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.dao;

import com.br.seriesproject.model.Usuario;
import java.util.List;
import javax.annotation.PreDestroy;
import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

@LocalBean
@Stateful
public class UsuarioDAO implements GenericDAO<Usuario> {

    @PersistenceContext(unitName = "seriesPU" , type = PersistenceContextType.EXTENDED)
    EntityManager em;
    
    @PreDestroy
public void destruct()
{
    em.close();
}
    
    
    @Override
    public void insert(Usuario e) {
        em.persist(e);
    }

    @Override
    public void update(Usuario e) {
        em.merge(e);
    }

    @Override
    public void delete(Usuario e) {
        em.merge(e);
        em.remove(e);
    }

    @Override
    public List<Usuario> readAll() {
        Query query = em.createNamedQuery("Usuario.findAll");
        return (List<Usuario>) query.getResultList();
    }

    @Override
    public Usuario readById(long id) {
        return em.find(Usuario.class, id);
    }
    
    public Usuario readByUsername(String username){
        Query query = em.createNamedQuery("Usuario.findByUsername").setParameter("username",username);
        Object object = null;
               
        try{
        object = query.getSingleResult();
        return (Usuario)object;
        }
        catch(NoResultException ex){
            return null;
        }
    }
    
}
