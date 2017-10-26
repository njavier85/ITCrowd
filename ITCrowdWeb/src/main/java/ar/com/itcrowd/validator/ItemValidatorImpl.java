package ar.com.itcrowd.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import ar.com.itcrowd.bean.Item;
import ar.com.itcrowd.services.ItemService;

@Service
@Transactional
public class ItemValidatorImpl implements ItemValidator{

	@Autowired
	private ItemService itemService;

	@Override
	public boolean supports(Class<?> clazz) {
		return Item.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Item item = (Item) target;
		Item item2 = itemService.getItemByDescription(item.getDescription());
		if( (item2!=null) &&  (item2.getId()!=item.getId())) {
            errors.rejectValue("description", "descriptionUsed");
		}
 	}
}
