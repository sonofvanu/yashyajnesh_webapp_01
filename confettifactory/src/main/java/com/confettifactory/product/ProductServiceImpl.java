package com.confettifactory.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO pDAO;
	
	public void insert(Product p) {
		// TODO Auto-generated method stub
		pDAO.insert(p);
	}

	public void update(Product p) {
		// TODO Auto-generated method stub
		pDAO.update(p);
	}

	public void delete(int pid) {
		// TODO Auto-generated method stub
		pDAO.delete(pid);
	}

	public Product getProduct(int pid) {
		// TODO Auto-generated method stub
		return pDAO.getProduct(pid);
	}

	public List<Product> ListProduct() {
		// TODO Auto-generated method stub
		return pDAO.ListProduct();
	}

	public Product getProductWithMaxId() {
		// TODO Auto-generated method stub
		return pDAO.getProductWithMaxId();
	}

}
