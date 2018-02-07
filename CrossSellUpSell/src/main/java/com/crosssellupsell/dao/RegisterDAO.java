package com.crosssellupsell.dao;


import java.util.List;

import com.crosssellupsell.model.Register;

/**
 * This class declares all the Register DAO methods required for CRUD operation
 * @author Harsharadhya
 * @version 1.0
 */
public interface RegisterDAO {

	public void addRegister(Register p);
	public List<Register> VerifyLogin(String p);
}
