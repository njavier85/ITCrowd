package ar.com.itcrowd.services.impl;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.com.itcrowd.bean.Item;
import ar.com.itcrowd.dao.ItemDao;
import ar.com.itcrowd.services.ItemService;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;
	
	@Override
	public void saveOrUpdate(Item entity) {
		// TODO Auto-generated method stub
		itemDao.saveOrUpdate(entity);
	}

	@Override
	public List<Item> getAll() {
		// TODO Auto-generated method stub
		return itemDao.getAll();
	}

	@Override
	public Item get(Long id) {
		// TODO Auto-generated method stub
		return itemDao.find(id);
	}

	@Override
	public void add(Item entity) {
		// TODO Auto-generated method stub
		itemDao.add(entity);
	}

	@Override
	public void update(Item entity) {
		// TODO Auto-generated method stub
		itemDao.update(entity);
	}

	@Override
	public void remove(Item entity) {
		// TODO Auto-generated method stub
		itemDao.remove(entity);
	}

	@Override
	public Item getItemByDescription(String description) {
		return itemDao.getItemByDescription(description);
	}

	@Override
	public void delete(Long id) {
		this.itemDao.delete(id);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		itemDao.deleteAll();
	}

}
