package springmvc_2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springmvc_2.dao.UserCrud;
import springmvc_2.dto.User;

@Controller
public class UserController {
	@Autowired
	private UserCrud crud;
	
	@RequestMapping("/save")
	public ModelAndView saveUser(@ModelAttribute User user) {
		ModelAndView view=new ModelAndView();
		try {
			crud.saveUser(user);
			view.setViewName("login.jsp");
			view.addObject("msg","login success");
			System.out.println(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			view.setViewName("register.jsp");
			view.addObject("msg","incorrect data");
			System.out.println(user);
		}
		return view;
	}
	
	@RequestMapping("/login")
	public ModelAndView loginUser(@RequestParam String email,@RequestParam String pwd) {
		ModelAndView view=new ModelAndView();
		try {
			User db = crud.findByEmail(email);
			if(db.getPwd().equals(pwd)) {
				view.setViewName("print.jsp");
				view.addObject("data",db);
			}
			else {
				view.setViewName("login.jsp");
				view.addObject("msg1","pwd is mismatch");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			view.setViewName("login.jsp");
			view.addObject("msg1","email is mismatch");
		}
		
		return view;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateUser(@ModelAttribute User user) {
		ModelAndView view=new ModelAndView();
		try {
			crud.updateUser(user);
			view.setViewName("update.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			view.setViewName("print.jsp");
		}
		return view;
	}
	
//	@RequestMapping("printall")
	public ModelAndView printAll() {
		ModelAndView view=new ModelAndView();
		List<User> li = crud.fetchAll();
		view.addObject("list",li);
		return view;
	}
}
