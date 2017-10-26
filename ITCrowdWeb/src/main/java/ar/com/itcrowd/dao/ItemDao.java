package ar.com.itcrowd.dao;

import ar.com.itcrowd.bean.Item;

public interface ItemDao extends GenericDao<Item, Long> {

	public Item getItemByDescription(String description);

	public void delete(Long id);

	public void deleteAll();
	
}
