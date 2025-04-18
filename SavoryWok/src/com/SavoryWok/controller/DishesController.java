package com.SavoryWok.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;
import com.SavoryWok.service.DishesService;



@Controller
public class DishesController {
	
	@Resource
	private DishesService DishesService;
	

	//首页中点击一级分类查询商品
	@RequestMapping(value="/findByCid/{cid}/{page}")
	public String findByCid(@PathVariable("cid") Integer cid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		List<Dishes> Dishes = DishesService.findByCid(cid, page);
		Integer count = DishesService.CountPageDishesFromCategory(cid);
		if(page > count){
			page = 1;
		}
		//map.put("Dishes", Dishes);
		map.put("dishesList", Dishes);
		//把当前的页数存放到map中
		map.put("page", page);
		//总共有多少页
		map.put("count",count);
		map.put("cid", cid);
		return "recai";
	}
	
	
		
     //根据二级分类查询商品
		@RequestMapping(value="findByCsid/{csid}/{page}")	
		public String findByCsid(@PathVariable("csid") Integer csid,@PathVariable("page") Integer page
				,Map<String,Object> map){
			Integer count = DishesService.CountPageDishesFromCategorySecond(csid);
			if(page > count){
				page = 1;
			}
			List<Dishes> Dishes = DishesService.findByCsid(csid, page);
			//map.put("Dishes", Dishes);
			 map.put("dishesList", Dishes);
			//把当前的页数存放到map中
			map.put("page", page);
			//总共有多少页
			map.put("count",count);
			map.put("csid", csid);
			return "recai";
		}
		
		
		
	//根据菜品pid查询菜品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Dishes> map){
		map.put("Dishes", DishesService.findByPid(pid));
		return "caipinxiangqing";
	}
	
	
	@RequestMapping(value="/findByCsname/{csname:.+}/{page}")
	public String findByCsname(@PathVariable("csname") String csname,
	                          @PathVariable("page") Integer page,
	                          Map<String, Object> map) {
		// 增加调试输出
	    System.out.println("接收到的csname参数：" + csname);
	    
	    // 调用服务层
	    List<Dishes> dishesList = DishesService.findByCsname(csname, page);
	    Integer totalPage = DishesService.countPageByCsname(csname);
	    
	    // 分页验证（可选）
	    if(page > totalPage){
	        page = 1;
	    }
	    
	    // 参数注入map
	    //map.put("dList", dishesList);  
	    map.put("dishesList", dishesList); // 与jsp页面中的遍历名称保持一致
	    map.put("page", page);
	    map.put("count", totalPage);
	    map.put("csname", csname);     // 传递当前分类名
	    
	    return "recai";
	}


	
}



















