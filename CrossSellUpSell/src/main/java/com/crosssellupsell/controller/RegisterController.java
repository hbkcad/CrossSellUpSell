package com.crosssellupsell.controller;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crosssellupsell.model.Register;
import com.crosssellupsell.service.RegisterService;



/**
 * Sample spring controller class to demonstrate CRUD operations 
 * @author Harsharadhya
 * @version 1.0
 */

@Controller
@RequestMapping(value="Register")
public class RegisterController {
	
	public int login_flag=0;
	private RegisterService registerService;
	
	/**
	 * This initializes RegisterService object with DI
	 * @param ps 
	 */
	@Autowired(required=true)
	@Qualifier(value="registerService")
	public void setRegisterService(RegisterService ps){
		this.registerService = ps;
	}
	
	/**
	 * This is used to set Register model attributes
	 * @param model for adding Model attributes
	 * @return 
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String listRegisters(Model model) {
		model.addAttribute("register", new Register());
		return "register";
	}
	
	/**
	 * This is used to add and update Register object
	 * @param p is a Register object for adding new Register to database
	 * @return
	 */
	@RequestMapping(value= "/register/add", method = RequestMethod.POST)
	public String addRegister(@ModelAttribute("register") Register p){
		
		if(p.getId() == 0){
			//new register, add it
			this.registerService.addRegister(p);
		}
		
		return "redirect:/listproducts";
		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String listPersons(Model model) {
		//model.addAttribute("person", new Person());
		//model.addAttribute("listPersons", this.personService.listPersons());
		return "login";
	}
	
	/**
	 * This is used to add and update Person object
	 * @param p is a Person object for adding new Person to database
	 * @return
	 */
	@RequestMapping(value= "/login/add", method = RequestMethod.POST)	

	public String addPerson(@RequestParam String email,@RequestParam String password){
		boolean success=true;
	
		String name1=email;
		String pass=password;
		 if(name1.equals("admin") && pass.equals("admin")){
             
             return "adminPage";
      }
		 
		Register p=new Register();
		p.setEmail(email);
		p.setPassword(password);
		//p.setType(type);
		success=this.registerService.VerifyLogin(p);
		if(success)
		{
			
				login_flag=1;

		}
		if(login_flag==1 && success)
		{
			return "redirect:/listproducts";
		}
		return "redirect:/Register/register";
	}
	
	 @RequestMapping(value= "/admin") 
     public String adminLogin(@RequestParam String name,@RequestParam String password){
           
            String name1=name;
            String pass=password;
    
            if(name1.equals("admin") && pass.equals("admin")){
                  
                   return "adminPage";
            }
            return "redirect:/";
    
     }
     @RequestMapping(value="/adminPage")
     public String adminPage(){
            return "redirect:/adminPage";
     }
	
	
}
