package com.crosssellupsell.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crosssellupsell.dao.CategoryDAO;
import com.crosssellupsell.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	
	
	
	private CategoryDAO categoryDAO;
	
	
	public void setCategoryDAO(CategoryDAO categoryDAO){
		this.categoryDAO=categoryDAO;
	}
	
	
	
	@Override
	public List<Category> listCategory() {
		// TODO Auto-generated method stub
		return this.categoryDAO.listCategory();
	}



	@Override
	public void addCategory(Category p) {
		this.categoryDAO.addCategory(p);
		
	}



	@Override
	public void updateCategory(Category p) {
		this.categoryDAO.updateCategory(p);
		
	}



	@Override
	public Category getCategoryById(int cid) {
		
		return this.categoryDAO.getCategoryById(cid);
	}



	@Override
	public void removeCategory(int cid) {
		this.categoryDAO.removeCategory(cid);
		
	}

	
}
