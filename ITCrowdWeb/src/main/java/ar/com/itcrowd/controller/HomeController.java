package ar.com.itcrowd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ar.com.itcrowd.bean.Item;
import ar.com.itcrowd.services.ItemService;
import ar.com.itcrowd.validator.ItemValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private ItemValidator itemValidator;
	
	@InitBinder("item")
	public void businessUserForm(WebDataBinder binder) {
	    binder.addValidators(itemValidator);
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model) {
		return "home";
	}
	
	
	@RequestMapping(value = "/addItem", method = RequestMethod.GET)
	public String addItem(HttpSession session, Model model) {
		Item item = (Item) session.getAttribute("item");
		if(item==null) {
			item = new Item();
		}
		model.addAttribute("item", item );
		return "itemForm";
	}
	
	@RequestMapping(value = "/itemList", method = RequestMethod.GET)
	public String itemList( Model model) {
		List<Item> itemList = this.itemService.getAll();
		model.addAttribute("itemList", itemList);
		return "itemList";
	}
	
	@RequestMapping(value = "/saveItem", method = RequestMethod.POST)
	public String saveItem(HttpSession session,@ModelAttribute("item") @Validated Item  item, BindingResult result, Model model) {
		if (result.hasErrors()) {
	            model.addAttribute("item", item);
	            return "itemForm";
		}
		this.itemService.saveOrUpdate(item);
		session.setAttribute("item", null);
		return "redirect:/itemList";
	}
	
	@RequestMapping("/editItem/{id}")
	public String editItem(@PathVariable("id") long id, HttpSession session){
		Item item = this.itemService.get(id);
		session.setAttribute("item", item);
		return "redirect:/addItem";
	}
	
	@RequestMapping("/deleteItem/{id}")
	public String deleteItem(@PathVariable("id") long id){
		this.itemService.delete(id);
		return "redirect:/itemList";
	}
	
	@RequestMapping("/deleteAllItem")
	public String deleteAllItem(){
		this.itemService.deleteAll();
		return "redirect:/itemList";
	}
}
