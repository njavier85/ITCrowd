package ar.com.itcrowd.dao.impl;


import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.com.itcrowd.bean.Item;
import ar.com.itcrowd.dao.ItemDao;

@Repository
public class ItemDaoImpl extends GenericDaoImplementation<Item, Long> implements ItemDao{

	public Item getItemByDescription(String description) {
        Criteria criteria = this.getSessionFactory().getCurrentSession().createCriteria(Item.class, "item");
        criteria.add(Restrictions.eq("description", description));
        return (Item) criteria.uniqueResult();
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		Item item = this.find(id);
		this.remove(item);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		this.getSessionFactory().getCurrentSession().createQuery("delete from Item").executeUpdate();
	}

}
