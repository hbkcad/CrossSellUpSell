package com.crosssellupsell.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crosssellupsell.dao.AccessoryDAO;
import com.crosssellupsell.model.Accessory;

@Service
public class AccessoryServiceImpl implements AccessoryService {

	
	private AccessoryDAO accessoryDAO;
	
	public void setAccessoryDAO(AccessoryDAO accessoryDAO){
		this.accessoryDAO=accessoryDAO;
	}
	
	
	
	@Override
	@Transactional
	public List<Accessory> listAccessory() {
		
		return this.accessoryDAO.listAccessory();
	}

	@Override
	@Transactional
	public void addAccessory(Accessory p) {
		this.accessoryDAO.addAccessory(p);
	}

	@Override
	@Transactional
	public void updateAccessory(Accessory p) {
		this.accessoryDAO.updateAccessory(p);
	}

	@Override
	@Transactional
	public Accessory getAccessoryById(int accid) {
		
		return this.accessoryDAO.getAccessoryById(accid);
	}

	@Override
	@Transactional
	public void removeAccessory(int accid) {
		this.accessoryDAO.removeAccessory(accid);

	}

}
