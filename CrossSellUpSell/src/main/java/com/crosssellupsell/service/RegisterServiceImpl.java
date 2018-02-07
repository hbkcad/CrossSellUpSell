package com.crosssellupsell.service;



import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crosssellupsell.dao.RegisterDAO;
import com.crosssellupsell.model.Register;

/**
 * This class implements RegisterService
 * @author siddaraju.c
 * @version 1.0
 */
@Service
public class RegisterServiceImpl implements RegisterService {
	
	private RegisterDAO registerDAO;

	/**
	 * This initializes registerDAO class object
	 * @param registerDAO 
	 */	
	public void setRegisterDAO(RegisterDAO registerDAO) {
		this.registerDAO = registerDAO;
	}

	/**
	 * This is used to persist Register object inside database
	 * @param p is a Register object for adding new Register to database
	 */
	@Override
	@Transactional
	public void addRegister(Register p) {
		this.registerDAO.addRegister(p);
	}
	
	@Override
	@Transactional
	public boolean VerifyLogin(Register p) {
		List<Register> userlogin;
		
		userlogin=this.registerDAO.VerifyLogin(p.getEmail());
		
		for(Register user : userlogin){
			
			if(p.getEmail().equalsIgnoreCase(user.getEmail()) &&
					p.getPassword().equalsIgnoreCase(user.getPassword())  )
				{
					
					return true;
					
				}
		
		}
		
		return false;
	}

}
