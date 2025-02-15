package com.chuse.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import com.chuse.entity.Category;
import com.chuse.entity.CategorySecond;

/**
 * 
 * Product代表显示的菜品
 * @author lenovo
 *
 */
//这是一行注释
@Table(name="product")
@Entity
public class Product implements java.io.Serializable{
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
   private Integer pid;
   private Integer is_hot;
   private String pname;
   private String image;
   private String pdesc;
   private Date pdate;
   private String pcontent;

	// 二级分类的外键:使用二级分类的对象.
	@JoinColumn(name="csid")
	@ManyToOne
	private CategorySecond categorySecond;
	
	
	 // 新增：与 recipe_step 表的一对多关系
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	@OrderBy("step ASC") // 保证步骤顺序
    private List<RecipeStep> steps; // 存储该菜品对应的所有步骤
    


public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public Integer getIs_hot() {
	return is_hot;
}
public void setIs_hot(Integer is_hot) {
	this.is_hot = is_hot;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getPdesc() {
	return pdesc;
}
public void setPdesc(String pdesc) {
	this.pdesc = pdesc;
}
public Date getPdate() {
	return pdate;
}
public void setPdate(Date pdate) {
	this.pdate = pdate;
}
public String getPcontent() {
	return pcontent;
}
public void setPcontent(String pcontent) {
	this.pcontent = pcontent;
}
public CategorySecond getCategorySecond() {
	return categorySecond;
}
public void setCategorySecond(CategorySecond categorySecond) {
	this.categorySecond = categorySecond;
}

// 新增：steps 的 Getter 和 Setter
public List<RecipeStep> getSteps() {
    return steps;
}

public void setSteps(List<RecipeStep> steps) {
    this.steps = steps;
}


   
   
}
