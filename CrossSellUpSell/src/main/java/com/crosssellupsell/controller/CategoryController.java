package com.crosssellupsell.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crosssellupsell.model.Category;
import com.crosssellupsell.service.CategoryService;




@Controller
@RequestMapping("Category")
public class CategoryController {

	private CategoryService categoryService;
	
	@Autowired(required=true)
	@Qualifier(value="categoryService")
	public void setCategoryService(CategoryService cs)
	{
		this.categoryService=cs;
	}
	
	
	@RequestMapping(value="/category",method =RequestMethod.GET)
	public String listCategory(Model model){
		model.addAttribute("category",new Category());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		
		return "category";
	}
	
	@RequestMapping(value="/category/add",method =RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category p){
		if(p.getCid()== 0){
			this.categoryService.addCategory(p);
		}else
		{
			this.categoryService.updateCategory(p);
		}
		return "redirect:/Category/category";
	}
	
	@RequestMapping("/remove/{cid}")
	public String removeCategory(@PathVariable("cid") int cid){
		this.categoryService.removeCategory(cid);
		return "redirect:/Category/category";
	}
	
	@RequestMapping("/edit/{cid}")
	public String editCategory(@PathVariable("cid") int cid,Model model){
		model.addAttribute("category", this.categoryService.getCategoryById(cid));
		model.addAttribute("listCategory",this.categoryService.listCategory());
		
		return "category";
	}
	
}
