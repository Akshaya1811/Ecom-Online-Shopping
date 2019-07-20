package com.niit.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;



	@Entity
	@Table
	
	public class Category
	{
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
     int id;
     String categoryname;
     String categoryDesc;
     @OneToMany(mappedBy="category")
     private List<Product> products;

	public int getid() 
	{
		return id;
	}
	public void setid(int id) 
	{
		this.id = id;
	}
	public String getCategoryname() 
	{
		return categoryname;
	}
	public void setCategoryname(String categoryname) 
	{
		this.categoryname = categoryname;
	}
	public String getCategoryDesc() 
	{
		return categoryDesc;
	}
	public void setCategoryDesc(String categoryDesc) 
	{
		this.categoryDesc = categoryDesc;
	}	
	public List<Product> getProducts() {
		return products;
	}
	    public void setProducts(List<Product> products) {
		this.products = products;
	}
		
	}

