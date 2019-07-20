package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.models.Category;

@Controller
public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO;	
	
	@RequestMapping(value="/admin/getcategory")
	public String showCategory(Model m)
	{
		System.out.println("categorycontroller");
	 List<Category> listCategories=categoryDAO.listCategories();
	m.addAttribute("categoryList",listCategories);
	return "category";	}
	
	@RequestMapping(value="/InsertCategory",method=RequestMethod.POST)
	 public String insertCategory(@RequestParam("categoryname")String categoryname,@RequestParam("catDesc")String categoryDesc,Model m)
	 
	
{
		Category category=new Category();
		category.setCategoryname(categoryname);
		category.setCategoryDesc(categoryDesc);
		
		categoryDAO.addCategory(category);
		 List<Category> listCategories=categoryDAO.listCategories();
			m.addAttribute("categoryList",listCategories);
	return "category";
}
	 @RequestMapping(value="/updateCategory",method=RequestMethod.POST)
	 public String updateCategory(@RequestParam("catId")int id,@RequestParam("categoryname")String categoryname,@RequestParam("catDesc")String categoryDesc,Model m)	 
	 {
		 
		 Category category=categoryDAO.getCategory(id);
		 category.setCategoryname(categoryname);
		 category.setCategoryDesc(categoryDesc);
		
		 categoryDAO.updateCategory(category);
		 List<Category> listCategories=categoryDAO.listCategories();
			m.addAttribute("categoryList",listCategories);
          return "category";
	 }
	 @RequestMapping(value="/editCategory/{id}")
		public String editCategory(@PathVariable("id")int id,Model m)
		{
			Category category=categoryDAO.getCategory(id);
	         categoryDAO.updateCategory(category);
			List<Category> listCategories=categoryDAO.listCategories();
			m.addAttribute("categorydata", category);
			
		return "updatecategory";
		}
	 
	 @RequestMapping(value="/deleteCategory/{id}")
	 public String deleteCategory(@PathVariable("id")int id,Model m)	 
	 {
		 Category category=categoryDAO.getCategory(id);
         categoryDAO.deleteCategory(category);
		List<Category> listCategories=categoryDAO.listCategories();
		m.addAttribute("categoryList",listCategories);
		
	return "category";	 
	
	 }
	
	 }

