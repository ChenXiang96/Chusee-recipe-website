package com.SavoryWok.controller;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.SavoryWok.entity.Page;
import com.SavoryWok.entity.User;
import com.SavoryWok.service.UserService;

@Controller
public class UserController{

	@Resource
	private UserService userService;
	
	@ModelAttribute
	public User getUser(){
		return new User();
	}
	
	//-----------------------------------------------
		//后-查-商品列表
		@RequestMapping("/get")
		public String listgoods(User user,HttpSession session,HttpServletRequest request){
			String num = request.getParameter("pageNum");//获取用户要看的页码
			int pageNumber = 1;
			if(num!=null){
				pageNumber = Integer.parseInt(num);
			}		
			List<User> list=this.userService.findByPage(pageNumber, 5);
			Page page = new Page(pageNumber,5);
			page.setList(list);
			page.setTotalCount(this.userService.findByCount());
			session.setAttribute("list", list);
			session.setAttribute("page", page);
			System.out.println("con xiaomi");
			return "adm/detail/userList";
		 }
	
	
	
	
	//用户退出
		@RequestMapping("/quit")
		public String quit(HttpSession session,HttpServletRequest request){
			request.getSession().invalidate();
			return "redirect:index";
		}
	
	
	//用户登录
		@RequestMapping(value="login")
		public String login(@ModelAttribute("user") User user, String checkcode,
				HttpSession session,Map<String,Object> map){
			//从session中获取验证码
			String checkCode = (String) session.getAttribute("checkcode");
			//如果验证码不一致，直接返回到登陆的页面
			if(! checkCode.equalsIgnoreCase(checkcode)){
				map.put("errorCheckCode", "errorCheckCode");
				return "Login"; 
			}
			//判断是否存在用户
			User isExistUser = userService.existUser(user.getUsername());
			if(isExistUser == null){
				map.put("notUser", "notUser");
				return "Login";
			}
			//判断用户是否激活
			User u = userService.existUser(user.getUsername());
			if(u.getState() == 0){
				map.put("notActive","notActive");
				return "Login";
			}
			//判断用户名和密码是否都正确
			u = userService.findUserByUsernameAndPassword(user);
			if(u == null){
				map.put("notPassword", "notPassword");
				return "Login";
			}
			session.setAttribute("user", u);
			return "redirect:index";
		}
	
	//跳转到用户登录
	@RequestMapping(value="/userLogin")
	public String userLogin(){
		return "Login";
	}

	
	       //用户激活
			@RequestMapping(value="/active/{code}")
			public String active(@PathVariable("code") String code,Map<String,Object> map){
				//根据激活码去查询用户
				User user = userService.active(code);
				if(user == null){
					map.put("notUser", "notUser");
					return "ono";
				}
				user.setCode("");
				user.setState(1);
				userService.update(user);
				map.put("activeSuccess","activeSuccess");
				return "wayes";
			}

			// 用户注册
			//这里一个@Valid的参数后必须紧挨着一个BindingResult 参数，否则spring会在校验不通过时直接抛出异常
			@RequestMapping(value = "register",method=RequestMethod.POST)
			public String register(@ModelAttribute @Valid User user,BindingResult result,HttpSession session,
					String checkcode,Map<String,Object> map) {
				//如果有错误，直接跳转到注册的页面
				if (result.hasErrors()){
					//在控制台打印错误的信息s
		            List<ObjectError> errorList = result.getAllErrors();
		            for(ObjectError error : errorList){
		                System.out.println(error.getDefaultMessage());
		            }
		            //返回到注册页面
		            return "register";
		        }
				//从session中获取验证码
				String checkCode = (String) session.getAttribute("checkcode");
				System.out.println("后台验证码"+checkCode);
				System.out.println("前台验证码"+checkcode);		
				//如果验证码不一致，直接返回
				if(! checkCode.equalsIgnoreCase(checkcode)){
					map.put("errorCheckCode", "errorCheckCode");
					return "register"; 
				}
				userService.register(user);
				return "yes";
			 }


	// 使用ajax判断用户是否存在
		@RequestMapping(value="/checkUser/{userName}",method=RequestMethod.POST)
		@ResponseBody
		public String existUser(@PathVariable("userName") String userName, HttpServletResponse response) 
				throws IOException {
			System.out.println(userName);
			
			response.setContentType("text/html;charset=UTF-8");
			if (userService.existUser(userName) != null) {
			
				// 查询到该用户:用户名已经存在
				response.getWriter().println("1");
			} else {
				
				// 没查询到该用户:用户名可以使用
				response.getWriter().println("0");
				
			}
			return null;
		}
		
	//用户注册的跳转
	@RequestMapping("/userRegister")
	public String register() {
		return "register";
	}

}