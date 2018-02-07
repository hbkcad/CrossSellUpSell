package com.crosssellupsell.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;




@Entity
@Table(name = "CATEGORY")
public class Category {

	@Id
	@Column(name = "cid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CATEGORY_CID_SEQ")
	@SequenceGenerator(name = "CATEGORY_CID_SEQ", sequenceName = "CATEGORY_CID_SEQ", allocationSize = 1)
	private int cid;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Column(name="cname")
	private String cname;
	
}
