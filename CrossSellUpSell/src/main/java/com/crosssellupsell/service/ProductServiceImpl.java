package com.crosssellupsell.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crosssellupsell.dao.ProductDAO;
import com.crosssellupsell.model.Product;



@Service
public class ProductServiceImpl implements ProductService {

	private ProductDAO productDAO;
	
	public void setProductDAO(ProductDAO productDAO){
		this.productDAO=productDAO;
	}
	
	@Override
	@Transactional
	public void addProduct(Product p) {
	this.productDAO.addProduct(p);

	}
	
	@Override
	@Transactional
	public void updateProduct(Product p) {
		this.productDAO.updateProduct(p);

	}
	
	@Override
	@Transactional
	public List<Product> listProducts() {
		
		return this.productDAO.listProducts();
	}
	
	@Override
	@Transactional
	public List<Product> listProductsview() {
		
		return this.productDAO.listProducts();
	}
	
	@Override
	@Transactional
	public Product getProductById(int prod_id) {
		return this.productDAO.getProductById(prod_id);
	}

	@Override
	@Transactional
	public void removeProduct(int prod_id) {
		this.productDAO.removeProduct(prod_id);

	}

}
