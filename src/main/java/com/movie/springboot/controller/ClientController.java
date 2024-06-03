package com.movie.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.movie.springboot.model.Customer;
import com.movie.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
@Controller
public class ClientController {
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@Autowired
	  private CustomerService customerService;
	  
	  @GetMapping("customerlogin") // URI (Uniform Resource identifier) & Method Name
	  public ModelAndView customerlogin() {
	    ModelAndView mv= new ModelAndView();
	    mv.setViewName("customerlogin");
	    return mv;
	  }
	  
	  @PostMapping("checkcustomerlogin")
	  public ModelAndView checkcustomerlogin(HttpServletRequest request) {
	    
	    ModelAndView mv = new ModelAndView();
	    
	    String email = request.getParameter("email");
	       String pwd = request.getParameter("password");
	       
	      Customer  cus =  customerService.checkcustomerlogin(email, pwd);
	      
	      //very imp
	      if(cus!=null)
	      {
	        
	        // session
	        HttpSession session= request.getSession();
	        
	        session.setAttribute("eid", cus.getId()); // eid is a session variable 
	        session.setAttribute("ename", cus.getName()); // ename is a session variable 
	        
	        //session
	        mv.setViewName("customerhome");
	      }
	      else
	      {
	        mv.setViewName("customerlogin");
	        mv.addObject("message", "Login Failed");
	      }
	      return mv;                                                                                                               
	  }
	  
	  @GetMapping("customerreg")
	  public ModelAndView customerregistration() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerregistration");
	    return mv;
	  }
	  @PostMapping("insertcustomer")
	  public ModelAndView insertcustomer(HttpServletRequest request) {
	    
	    String msg="null";
	    ModelAndView mv = new ModelAndView();
	    
	    
	    try {
	      String name = request.getParameter("name");
	      String contact = request.getParameter("phonenumber");
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("password");
	       
	        
	        
	       Customer c=new Customer();
	       c.setName(name);
	        
	        c.setEmail(email);
	        c.setPassword(pwd);
	        c.setPhonenumber(contact);
	        msg=customerService.addcustomer(c);
	        
	        mv.setViewName("customerlogin");
	    }
	    catch(Exception e){
	      
	      msg=e.getMessage();
	      
	        mv.setViewName("displayerror");
	      mv.addObject("message", msg);
	    }
	    
	    return mv;
	  }
	  @GetMapping("fav")
	  public String favorites()
	  {
	    return "favorite";
	  }
	  @GetMapping("customerhome")
	  public String customerhome()
	  {
	    return "customerhome";
	  }
	  @GetMapping("search")
		 public String search() {
		  return "search";
	  }
	  @GetMapping("movie")
		 public String movie() {
		  return "movie";
	  }
	  
}
