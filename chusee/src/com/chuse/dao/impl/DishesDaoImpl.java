package com.chuse.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chuse.dao.DishesDao;
import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;

@Repository("DishesDao")
@SuppressWarnings("all")
public class DishesDaoImpl extends BaseDaoImpl<Dishes> implements DishesDao {

    @Override
    public List<Dishes> findByCategorySecondCategoryCid(Integer cid, Integer page) {
        String hql = "select p from Dishes p " +
                     "join p.categorySecond cs " +
                     "join cs.categories c " +
                     "where c.cid = :cid";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setParameter("cid", cid);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCategoryCid(Integer cid) {
        String hql = "select count(p) from Dishes p " +
                     "join p.categorySecond cs " +
                     "join cs.categories c " +
                     "where c.cid = :cid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("cid", cid)
                          .uniqueResult()).intValue();
    }

    @Override
    public List<Dishes> findByCategorySecondCsid(Integer csid, Integer page) {
        String hql = "select p from Dishes p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setParameter("csid", csid);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }

    @Override
    public Integer countByCategorySecondCsid(Integer csid) {
        String hql = "select count(p) from Dishes p " +
                     "join p.categorySecond cs " +
                     "where cs.csid = :csid";
        return ((Long) this.getCurrentSession().createQuery(hql)
                          .setParameter("csid", csid)
                          .uniqueResult()).intValue();
    }

    @Override
    public Dishes findOne(Integer pid) {
        return this.getCurrentSession().get(Dishes.class, pid);
    }
    
    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
    
 // 修改后的查询方法（核心）
/**    @Override
   public Dishes findWithSteps(Integer pid) {
        String hql = "SELECT p FROM Dishes p LEFT JOIN FETCH p.steps WHERE p.pid = :pid";
        return getCurrentSession()
                .createQuery(hql, Dishes.class)
                .setParameter("pid", pid)
                .uniqueResult();
    }
**/  
  @Override
    public Dishes findWithStepsAndIngredients(Integer pid) {
        // 使用 DISTINCT 避免重复数据
        String hql = "SELECT DISTINCT p FROM Dishes p " +
                     "LEFT JOIN FETCH p.steps " +
                     "LEFT JOIN FETCH p.ingredients " +
                     "WHERE p.pid = :pid";
        
        return getCurrentSession()
                .createQuery(hql, Dishes.class)
                .setParameter("pid", pid)
                .uniqueResult();
    }

    

    
    

    @Override
    public List<Dishes> findHot() {
        String hql = "from Dishes where is_hot = 1 order by pdate desc";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setMaxResults(6); // 查询最热的6条商品
        return query.list();
    }

    @Override
    public List<Dishes> findNew() {
        String hql = "from Dishes order by pdate desc";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setMaxResults(10); // 查询最新的10条商品
        return query.list();
    }

    @Override
    public List<Dishes> findAll(Integer page) {
        String hql = "from Dishes";
        Query<Dishes> query = this.getCurrentSession().createQuery(hql, Dishes.class);
        query.setFirstResult((page - 1) * 12); // 分页起始位置
        query.setMaxResults(12); // 每页大小
        return query.list();
    }
    


    

    @Override
    public Serializable save(Dishes o) {
        return null;
    }

    @Override
    public void delete(Serializable id) {
    }

    @Override
    public void delete(Dishes o) {
    }

    @Override
    public void update(Dishes o) {
    }

    @Override
    public void saveOrUpdate(Dishes o) {
    }

    @Override
    public Dishes get(Serializable id) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, Map<String, Object> params) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Subject> hfind2(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Subject> hfind(String hql, int page, int rows) {
        return null;
    }

    @Override
    public List<Dishes> find(String hql, Map<String, Object> params, int page, int rows) {
        return null;
    }

    @Override
    public Integer count(String hql) {
        return null;
    }

    @Override
    public Integer count(String hql, Integer id) {
        return null;
    }

    @Override
    public Integer count(String hql, Map<String, Object> params) {
        return null;
    }

    @Override
    public int executeHql(String hql) {
        return 0;
    }

    @Override
    public int executeHql(String hql, Map<String, Object> params) {
        return 0;
    }

    @Override
    public Integer CountPageDishesFromCategory(Integer cid) {
        return null;
    }

    @Override
    public Integer CountPageDishesFromCategorySecond(Integer csid) {
        return null;
    }

    @Override
    public Integer CountDishes() {
        return null;
    }
}