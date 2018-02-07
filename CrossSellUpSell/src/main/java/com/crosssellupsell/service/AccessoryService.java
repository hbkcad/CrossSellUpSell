package com.crosssellupsell.service;

import java.util.List;

import com.crosssellupsell.model.Accessory;

public interface AccessoryService {

	public List<Accessory> listAccessory();
	public void addAccessory(Accessory p);
	public void updateAccessory(Accessory p);
	public Accessory getAccessoryById(int accid);
	public void removeAccessory(int accid);
	
}
