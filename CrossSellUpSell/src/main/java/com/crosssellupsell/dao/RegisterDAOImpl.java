package com.crosssellupsell.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.crosssellupsell.model.Register;

/**
 * This class implements RegisterDAO
 * @author siddaraju.c
 * @version 1.0
 */
@Repository
public class RegisterDAOImpl implements RegisterDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(RegisterDAOImpl.class);

	private SessionFactory sessionFactory;
	
	/**
	 * This initializes sessionfactory object 
	 * @param sf
	 */
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	/**
	 * This is used to persist Register object inside database
	 * @param p is a Register object for adding new Register to database
	 */
	@Override
	public void addRegister(Register p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Register saved successfully, Register Details="+p);
	}
	
	@Override
	public List<Register> VerifyLogin(String name) {
		Session session = this.sessionFactory.getCurrentSession();
		Register user=new Register();
		
		List<Register> personsList = session.createQuery("from Register ").list();
		
		
		return personsList;
		
	}

}
