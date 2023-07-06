package com.example.SpringProject1;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;



import jakarta.servlet.http.HttpSession;
@org.springframework.stereotype.Controller
public class Controller {
    @Autowired
    AdminRepo repo;
    @Autowired
    LaptopRepo repo1;
    @RequestMapping("home")
    String homepage(){
    	
    	return "index.jsp";
    }
    @RequestMapping("login")
    String login(HttpSession s1,String data,String password) {
    	Admin a1=repo.validate(data, data);
    	if(a1!=null) {
    		if(a1.getAdminpassword().equals(password)) {
    			return "main.jsp";
    		}
    		else {
    			try {
    				throw new ResourceNotFoundException();
    			}
    			catch (Exception e) {
				     s1.setAttribute("msg1", e.getMessage());
				     return "error.jsp";
				}
    		}
    	}
    	try {
			throw new ResourceNotFoundException();
		}
		catch (Exception e) {
			s1.setAttribute("msg1", e.getMessage());
			 return "error.jsp";
		}
    }
    @RequestMapping("add")
    String add(Laptop l1) {
    	repo1.save(l1);
    	return "addpage.jsp";
    }
    @RequestMapping("findbyid")
    String findbyid(HttpSession s1,int laptopid) {
    	Laptop l1=repo1.findById(laptopid).orElse(null);
    	if(l1!=null) {
    		s1.setAttribute("lap", l1);
    	}
    	else {
    		try {
    			throw new ResourceNotFoundException();
    		}
    		catch (Exception e) {
			       s1.setAttribute("lap", e.getMessage());
			}
    	}
    	return "findby.jsp";
    }
    
    @RequestMapping("findbyprice")
    String findbyprice(HttpSession s1,int price) {
    	List<Laptop> l1=repo1.findbyprice(price);
    	if(l1.size()!=0) {
    	for (Laptop laptop : l1) {
			if(laptop!=null) {
				s1.setAttribute("lap", l1);
			}
		}}
    	else {
    		try {
    			throw new ResourceNotFoundException();
    		}
    		catch (Exception e) {
			       s1.setAttribute("lap", e.getMessage());
			}
    	}
    	return "findby.jsp";
    }
    
    @RequestMapping("findbyprocessor")
    String findbyprocessor(HttpSession s1,String processor) {
    	List<Laptop> l1=repo1.findbyprocessor(processor);
    	if(l1.size()!=0) {
        	for (Laptop laptop : l1) {
    			if(laptop!=null) {
    				s1.setAttribute("lap", l1);
    			}
    		}}
        	else {
        		try {
        			throw new ResourceNotFoundException();
        		}
        		catch (Exception e) {
    			       s1.setAttribute("lap", e.getMessage());
    			}
        	}
    	return "findby.jsp";
    }
    @RequestMapping("delete")
   String delete( int laptopid) {
    	 repo1.deleteById(laptopid);
    	 return "main.jsp";
    }
} 
