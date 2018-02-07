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

import com.crosssellupsell.model.Product;
import com.crosssellupsell.service.AccessoryService;
import com.crosssellupsell.service.CategoryService;
import com.crosssellupsell.service.ProductService;



@Controller
@RequestMapping("/")
public class ProductController {

	private ProductService productService;
	private CategoryService categoryService;
	private AccessoryService accessoryService;
	
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
	}
	
	@Autowired(required=true)
	@Qualifier(value="categoryService")
	public void setCategoryService(CategoryService cs)
	{
		this.categoryService=cs;
	}
	
	@Autowired(required=true)
	@Qualifier(value="accessoryService")
	public void setAccessoryService(AccessoryService as)
	{
		this.accessoryService=as;
	}
	
	@RequestMapping(value="/products",method =RequestMethod.GET)
	public String listProducts(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts",this.productService.listProducts());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "product";
	}
	
	
	
	@RequestMapping(value="/listproducts",method =RequestMethod.GET)
	public String listProductsview(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts",this.productService.listProductsview());
		return "plppage";
	}
	
	
	@RequestMapping(value="/mobile",method =RequestMethod.GET)
	public String listMobile(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts",this.productService.listProductsview());
		return "mobile";
	}
	
	@RequestMapping(value="/laptop",method =RequestMethod.GET)
	public String listLaptop(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts",this.productService.listProductsview());
		return "laptop";
	}
	
	@RequestMapping(value="/camera",method =RequestMethod.GET)
	public String listCamera(Model model){
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts",this.productService.listProductsview());
		return "camera";
	}
	
	
	@RequestMapping(value="/product/add",method =RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p,@RequestParam String image){
		p.setImage(image);
		if(p.getId()== 0){
			this.productService.addProduct(p);
		}else
		{
			this.productService.updateProduct(p);
		}
		return "redirect:/products";
	}
	
	@RequestMapping("/remove/{prod_id}")
	public String removeProduct(@PathVariable("prod_id") int prod_id){
		this.productService.removeProduct(prod_id);
		return "redirect:/products";
	}
	
	@RequestMapping("/edit/{prod_id}")
	public String editProduct(@PathVariable("prod_id") int prod_id,Model model){
		model.addAttribute("product", this.productService.getProductById(prod_id));
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("listProducts",this.productService.listProducts());
		return "product";
	}
	
	
	@RequestMapping("/pdp/{prod_id}")
	public String pdp(@PathVariable("prod_id") int prod_id,Model model){
		model.addAttribute("product", this.productService.getProductById(prod_id));
		model.addAttribute("listProducts",this.productService.listProducts());
		model.addAttribute("listAccessory",this.accessoryService.listAccessory());
		return "pdppage";
	}
		
	
	
}
