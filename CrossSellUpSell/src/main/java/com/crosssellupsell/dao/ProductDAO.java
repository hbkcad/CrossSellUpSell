package com.crosssellupsell.dao;

import java.util.List;

import com.crosssellupsell.model.Product;



public interface ProductDAO {

	public void addProduct(Product p);
	public void updateProduct(Product p);
	public List<Product> listProducts();
	public List<Product> listProductsview();
	public Product getProductById(int prod_id);
	public void removeProduct(int prod_id);
	
	
}
