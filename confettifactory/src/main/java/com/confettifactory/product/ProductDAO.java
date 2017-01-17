package com.confettifactory.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {

	@Autowired

	public void insert(Product p);

	public void update(Product p);

	public void delete(int pid);

	public Product getProduct(int pid);

	public List<Product> ListProduct();
	
	public Product getProductWithMaxId();


}
