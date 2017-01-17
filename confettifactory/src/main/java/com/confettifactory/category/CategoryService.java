package com.confettifactory.category;

import java.util.List;

public interface CategoryService {

	public void insert(Category c);

	public void update(Category c);
	
	public void delete(int cid);
	
	public Category getCategory(int cid);
	
	public List<Category> ListCategory();

	public Category getCategoryWithMaxId();
}
