package com.crosssellupsell.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;



@SuppressWarnings("serial")
@Entity
@Table(name = "ACCESSORY")
public class Accessory implements Serializable{
	
	
	@Id
	@Column(name = "aid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ACCESSORY_AID_SEQ")
	@SequenceGenerator(name = "ACCESSORY_AID_SEQ", sequenceName = "ACCESSORY_AID_SEQ", allocationSize = 1)
	
	
	
	private int aid;
	
	private int id;
	
	private String aname,aimage;
	private int aprice;
	

	public int getId() {
		return id;
	}
	public int getAprice() {
		return aprice;
	}
	public void setAprice(int aprice) {
		this.aprice = aprice;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
	public String getAimage() {
		return aimage;
	}
	public void setAimage(String aimage) {
		this.aimage = aimage;
	}
	
	

}
