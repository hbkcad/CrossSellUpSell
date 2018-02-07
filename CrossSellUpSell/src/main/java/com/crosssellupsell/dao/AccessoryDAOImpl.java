package com.crosssellupsell.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.crosssellupsell.model.Accessory;



@Repository
public class AccessoryDAOImpl implements AccessoryDAO {

	private static final Logger logger=LoggerFactory.getLogger(AccessoryDAOImpl.class);
	private SessionFactory sessionFactory;
	
	 public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<Accessory> listAccessory() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Accessory> accessoryList = session.createQuery("from Accessory").list();
		for(Accessory p:accessoryList){
			logger.info("Accessory list::"+p);
		}
		return accessoryList;
	}

	@Override
	public void addAccessory(Accessory p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Accessory saves successfully,Accessory Details="+p);
	}

	@Override
	public void updateAccessory(Accessory p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Accessory updated successfully,Accessory Details="+p);
	}

	@Override
	public Accessory getAccessoryById(int accid) {
		Session session = this.sessionFactory.getCurrentSession();
		Accessory p=(Accessory) session.load(Accessory.class,new Integer(accid));
		logger.info("Accessory loaded successfully,Accessory Details="+p);
		return p;
	}

	@Override
	public void removeAccessory(int accid) {
		Session session = this.sessionFactory.getCurrentSession();
		Accessory p=(Accessory) session.load(Accessory.class,new Integer(accid));
		if(null!=p){
			session.delete(p);
		}
		logger.info("Accessory deleted successfully,Accessory Details="+p);

	}

}
