package com.crosssellupsell.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crosssellupsell.model.Category;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	
	
private static final Logger logger=LoggerFactory.getLogger(CategoryDAOImpl.class);
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> listCategory() {
		Session session=this.sessionFactory.getCurrentSession();
		List<Category> categorylist =session.createQuery("from Category").list();
		for(Category p:categorylist){
			logger.info("Category list"+p);
		}
		return categorylist;
	}

	@Override
	public void addCategory(Category p) {
		Session session=this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Category saved successfully,Category Details="+p);
	}

	@Override
	public void updateCategory(Category p) {
		Session session=this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Category updated successfully,Category Details="+p);

		
	}

	@Override
	public Category getCategoryById(int cid) {
		Session session=this.sessionFactory.getCurrentSession();
		Category p=(Category) session.load(Category.class,new Integer(cid));
		logger.info("Category loaded successfully,Category Details="+p);
		return p;
	
	}

	@Override
	public void removeCategory(int cid) {
		Session session=this.sessionFactory.getCurrentSession();
		Category p=(Category) session.load(Category.class,new Integer(cid));
		if(null!=p){
			session.delete(p);
		}
		logger.info("Category deleted successfully,Category Details="+p);

		
	}


}
