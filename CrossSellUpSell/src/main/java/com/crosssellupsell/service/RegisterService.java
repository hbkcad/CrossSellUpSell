package com.crosssellupsell.service;


import com.crosssellupsell.model.Register;

/**
 * This class declares all the Register service methods required for CRUD operation
 * @author Harsharadhya
 * @version 1.0
 */
public interface RegisterService {

	public void addRegister(Register p);
	public boolean VerifyLogin(Register p);
	
}
