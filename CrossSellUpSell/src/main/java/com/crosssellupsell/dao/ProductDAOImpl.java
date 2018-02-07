package com.crosssellupsell.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.crosssellupsell.model.Product;




@Repository
public class ProductDAOImpl implements ProductDAO {

	private static final Logger logger=LoggerFactory.getLogger(ProductDAOImpl.class);
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	@Override
	public void addProduct(Product p) {
		Session session=this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Product saved successfully,Product Details="+p);
		
	}
	
	@Override
	public void updateProduct(Product p) {
		Session session=this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Product updated successfully,Product Details="+p);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listProducts() {
		Session session=this.sessionFactory.getCurrentSession();
		List<Product> productsList =session.createQuery("from Product").list();
		for(Product p:productsList){
			logger.info("Products list"+p);
		}
		return productsList;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductsview() {
		Session session=this.sessionFactory.getCurrentSession();
		List<Product> productsList =session.createQuery("from Product").list();
		for(Product p:productsList){
			logger.info("Products list"+p);
		}
		return productsList;
	}
	
	@Override
	public Product getProductById(int prod_id) {
		Session session=this.sessionFactory.getCurrentSession();
		Product p=(Product) session.load(Product.class,new Integer(prod_id));
		logger.info("Product loaded successfully,Product Details="+p);
		return p;
	}

	@Override
	public void removeProduct(int prod_id) {
		Session session=this.sessionFactory.getCurrentSession();
		Product p=(Product) session.load(Product.class,new Integer(prod_id));
		if(null!=p){
			session.delete(p);
		}
		logger.info("Product deleted successfully,Product Details="+p);

	}

}
