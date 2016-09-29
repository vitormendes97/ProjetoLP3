/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.dao;

import com.br.seriesproject.model.Userinfo;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

@LocalBean
@Stateful
public class UserInfoDAO implements GenericDAO<Userinfo> {

    @PersistenceContext(unitName = "seriesPU" , type = PersistenceContextType.TRANSACTION)
    EntityManager em;
    
    
    
    @Override
    public void insert(Userinfo e) {
        em.persist(e);
    }

    @Override
    public void update(Userinfo e) {
        em.merge(e);
    }

    @Override
    public void delete(Userinfo e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Userinfo> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Userinfo readById(long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
