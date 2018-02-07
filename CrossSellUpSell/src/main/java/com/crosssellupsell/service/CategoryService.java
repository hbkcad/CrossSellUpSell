package com.crosssellupsell.service;

import java.util.List;

import com.crosssellupsell.model.Category;


public interface CategoryService {

	public List<Category> listCategory();
	public void addCategory(Category p);
	public void updateCategory(Category p);
	public Category getCategoryById(int cid);
	public void removeCategory(int cid);
}
