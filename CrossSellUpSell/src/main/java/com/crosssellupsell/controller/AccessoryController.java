package com.crosssellupsell.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crosssellupsell.model.Accessory;
import com.crosssellupsell.service.AccessoryService;
import com.crosssellupsell.service.ProductService;


@Controller
@RequestMapping("Accessory")
public class AccessoryController {

	private AccessoryService accessoryService;
	private ProductService productService;
	
	
	@Autowired(required=true)
	@Qualifier(value="accessoryService")
	public void setAccessoryService(AccessoryService as){
		this.accessoryService=as;
	}
	
	
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
	}
	
	@RequestMapping(value="/accessory", method=RequestMethod.GET)
	public String listAccessory(Model model)
	{
		
		model.addAttribute("accessory",new Accessory());
		model.addAttribute("listProducts",this.productService.listProducts());
		model.addAttribute("listAccessory",this.accessoryService.listAccessory());
		return "accessory";
		
	}
	
	@RequestMapping(value="/accessory/add",method =RequestMethod.POST)
	public String addAccessory(@ModelAttribute("accessory") Accessory p ,@RequestParam String aimage){
		
		p.setAimage(aimage);
		if(p.getAid()== 0){
			this.accessoryService.addAccessory(p);
		}else
		{
			this.accessoryService.updateAccessory(p);
		}
		return "redirect:/Accessory/accessory";
	}
	
	
	@RequestMapping("/remove/{aid}")
	public String removeAccessory(@PathVariable("aid") int aid){
		this.accessoryService.removeAccessory(aid);
		return "redirect:/Accessory/accessory";
	}
	
	@RequestMapping("/edit/{accessory}")
	public String editProduct(@PathVariable("accessory") int aid,Model model){
		model.addAttribute("accessory", this.accessoryService.getAccessoryById(aid));
		model.addAttribute("listProduct",this.productService.listProducts());
		model.addAttribute("listAccessory",this.accessoryService.listAccessory());
		return "accessory";
	}
	
}
