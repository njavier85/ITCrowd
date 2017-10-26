package ar.com.itcrowd.services.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.com.itcrowd.dao.GenericDao;
import ar.com.itcrowd.services.GenericService;

@Service
public abstract class GenericServiceImplementation<E, K> implements GenericService<E, K> {
	
	@Autowired
    private GenericDao<E, K> genericDao;

    public GenericServiceImplementation(GenericDao<E,K> genericDao) {
        this.genericDao=genericDao;
    }

    public GenericServiceImplementation() {
    }

    @Override
    public void saveOrUpdate(E entity) {
        genericDao.saveOrUpdate(entity);
    }

    @Override
    public List<E> getAll() {
        return genericDao.getAll();
    }

    @Override
    public E get(K id) {
        return genericDao.find(id);
    }

    @Override
    public void add(E entity) {
        genericDao.add(entity);
    }

    @Override
    public void update(E entity) {
        genericDao.update(entity);
    }

    @Override
    public void remove(E entity) {
        genericDao.remove(entity);
    }
}
