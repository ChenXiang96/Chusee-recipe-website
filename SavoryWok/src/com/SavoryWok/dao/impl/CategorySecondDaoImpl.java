package com.SavoryWok.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.CategorySecondDao;
import com.SavoryWok.entity.CategorySecond;

@Repository("categorySecondDao")
public class CategorySecondDaoImpl extends BaseDaoImpl<CategorySecond> implements CategorySecondDao{

	public Integer countCategorySecond() {
		String hql = "select count(*) from CategorySecond";
		return count(hql);
	}

	public List<CategorySecond> findAll(Integer page) {
		String hql = "from CategorySecond";
		int rows = 15;
		int page1 = page;
		return find(hql, page1, rows);
	}

	public List<CategorySecond> findAll() {
		String hql = "from CategorySecond";
		return find(hql);
	}

	public CategorySecond findOne(Integer csid) {
		String hql = "from CategorySecond cs where cs.csid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, csid);
		return (CategorySecond)query.uniqueResult(); 
	}

}
