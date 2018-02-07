package com.crosssellupsell.dao;

import java.util.List;

import com.crosssellupsell.model.Accessory;



public interface AccessoryDAO {

	public List<Accessory> listAccessory();
	public void addAccessory(Accessory p);
	public void updateAccessory(Accessory p);
	public Accessory getAccessoryById(int accid);
	public void removeAccessory(int accid);
}
