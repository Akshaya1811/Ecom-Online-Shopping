package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {


	@Autowired
	SessionFactory sessionFactory;

	public boolean addCategory(Category category) 
	{
       try
       {
    	   sessionFactory.getCurrentSession().save(category);
    	   return true;
       }
       catch(Exception e)
       {
    	   System.out.println("Exception:"+e);
		return false;
       }
	}

	public boolean deleteCategory(Category category) 
	{
		       try
		       {
		    	   sessionFactory.getCurrentSession().delete(category);
		    	   return true;
		       }
		       catch(Exception e)
		       {
				return false;
		       }
	}

	public boolean updateCategory(Category category) 
	{
		       try
		       {
		    	   sessionFactory.getCurrentSession().update(category);
		    	   return true;
		       }
		       catch(Exception e)
		       {
				return false;
		       }
	}

	public List<Category> listCategories() 
	{
		Session session = sessionFactory.openSession();
		List<Category> listCategories=(List<Category>)session.createQuery("from Category").list();
		session.close();
		return listCategories;
	}

	public Category getCategory(int id) 
	{
		Session session = sessionFactory.openSession();
		Category category=(Category) session.get(Category.class,id);
		session.close();
		return category;
	}


}
