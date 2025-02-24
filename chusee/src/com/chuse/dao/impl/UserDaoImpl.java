package com.chuse.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.chuse.dao.UserDao;
import com.chuse.entity.Dishes;
import com.chuse.entity.User;

@Repository("userDao")
@SuppressWarnings("all")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
	@Resource
	private SessionFactory sessionFactory;
	
	//前台，往用户中心跳转--------------------------------------------
	//顺便获取用户信息
	public User findById(Integer uid){	
		User user = (User)this.sessionFactory.getCurrentSession().
				createQuery("from User where uid = ?").
				setParameter(0, uid).uniqueResult();
		return user;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后台-------------------------------------------------------
	//后-查-用户列表
	//分页查询数据	
	public List<User> findByPage(int pageNum, int pageSize){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("from "+User.class.getSimpleName());
			query.setFirstResult((pageNum-1)*pageSize);
			query.setMaxResults(pageSize);
			System.out.println("dao xiaomi");
			return query.list();
					
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//统计数据个数 
	public int findCountByPage(){
		try{
			Query query=this.sessionFactory.getCurrentSession().createQuery("select count("+"*"+") from "+User.class.getSimpleName());
			return new Long((long)query.uniqueResult()).intValue();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//-------------------------------------------------------------------------
	public Integer countUser() {
		String hql = "select count(*) from User";
		return count(hql);
	}

	public User findByCode(String code) {
		String hql = "from User u where u.code = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, code);
		return (User)query.uniqueResult(); 
	}

	public User findByUsername(String userName) {
		String hql = "from User u where u.username = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, userName);
		return (User)query.uniqueResult(); 
	}

	public User findByUsernameAndPassword(String username, String password) {
		String hql = "from User u where u.username = ? and u.password = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, password);
		return (User)query.uniqueResult(); 
	}

	public List<User> findAll(Integer page) {
		String hql = "from User";
		int rows = 20;
		int page1 = page;
		return find(hql, page1, rows);
	}

	public User findOne(Integer uid) {
		String hql = "from User u where u.uid = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, uid);
		return (User)query.uniqueResult(); 
	}


}
