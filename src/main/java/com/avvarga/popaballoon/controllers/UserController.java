package com.avvarga.popaballoon.controllers;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import com.avvarga.popaballoon.models.User;
import com.avvarga.popaballoon.services.UserService;

@Controller
public class UserController {
	
	private UserService uServ;
	public UserController (UserService uServ) {
		this.uServ = uServ;
	}
	
	
	@RequestMapping("/")
	public String main() {
		return "index.jsp";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test.jsp";
	}
	//Generate a code 
	@PostMapping("/test/generate")
	public String genCode(@RequestParam("login") String login,  Model model) {
		System.out.println("entered");
		//Generates a Random String 
		String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 9) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        model.addAttribute("code",saltStr);
        //Creates the user
        User nUser =  new User();
        nUser.setLogin(login);
        nUser.setCode(saltStr);
        //Saves the user to the DB
        uServ.saveUser(nUser);
        System.out.println("saved");
		return "redirect:/test";
	}
}
