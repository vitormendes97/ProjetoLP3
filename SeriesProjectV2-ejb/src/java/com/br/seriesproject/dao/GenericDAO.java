/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.dao;

import java.util.List;


public interface GenericDAO<E> {
    
    public void insert(E e);
    
    public void update(E e);
    
    public void delete(E e);
    
    public List<E> readAll();
    
    public E readById(long id);

    
}
