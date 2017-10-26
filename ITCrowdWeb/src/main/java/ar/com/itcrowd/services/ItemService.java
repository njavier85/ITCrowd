package ar.com.itcrowd.services;

import ar.com.itcrowd.bean.Item;

public interface ItemService extends GenericService<Item, Long> {

	public Item getItemByDescription(String string);

	public void delete(Long id);

	public void deleteAll();
}
