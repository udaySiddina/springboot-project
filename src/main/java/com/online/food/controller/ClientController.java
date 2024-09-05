package com.online.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.online.food.model.DeliveryBoy;
import com.online.food.repository.DeliveryRepository;
import com.online.food.service.DeliveryService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private DeliveryService deliveryService;
	
	@Autowired
	private DeliveryRepository deliveryRepository;
	
	
	@GetMapping("/")
	public String main() 
	{
		return "index";
	}
	
	@GetMapping("home")
	public ModelAndView home()
	{
		return new ModelAndView("home");
	}
	
	@GetMapping("delivery")
	public ModelAndView delivery()
	{
		return new ModelAndView("delivery");
	}
	
	@GetMapping("track")
	public ModelAndView track()
	{
		return new ModelAndView("track");
	}
	
	@GetMapping("reviews")
	public ModelAndView reviews()
	{
		return new ModelAndView("reviews");
	}
	
	@GetMapping("profile")
	public ModelAndView profile()
	{
		return new ModelAndView("profile");
	}
	
	@GetMapping("logout")
	public ModelAndView logout()
	{
		return new ModelAndView("index");
	}
	
	@GetMapping("index")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
		
	 @PostMapping("checkdeliveryboylogin")
	   public ModelAndView checkdevlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("uname");
	     

	     DeliveryBoy d=deliveryService.checkdevlogin(email, pwd);
	     
	       if(d!=null)
	       {
	         
	         mv.setViewName("home");
	       }
	       else
	       {
	         mv.setViewName("index");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	   
	
	

}
