package com.confettifactory.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryDAO {

	@Autowired
	
	public void insert(Category c);

	public void update(Category c);
	
	public void delete(int cid);
	
	public Category getCategory(int cid);
	
	public List<Category> ListCategory();
	
	public Category getCategoryWithMaxId();
}
