package com.prajwal.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prajwal.dao.EmpDao;
import com.prajwal.entity.Emp;


@Controller
public class HomeController {
	
	@Autowired
	private EmpDao empDao;
	
	@RequestMapping("/home")
	public String home(Model m) {
		
		List<Emp> list = empDao.getAllEmployee();
		m.addAttribute("empList",list);
		return "home";
	}
	@RequestMapping("/addEmp")
	public String addEmp(){
		return "add_emp";
	}
	@RequestMapping(path = "/createEmp", method = RequestMethod.POST)
	public String createEmp(@ModelAttribute Emp emp, HttpSession session) {
		System.out.println(emp);
		
		int i = empDao.saveEmp(emp);
		
		System.out.println("Data Inserted Successfully!!! " + i);
		session.setAttribute("msg","Register Sucessfully !!!");
		return "redirect:/addEmp";
	}
	
	@RequestMapping(path = "/editEmp/{id}")
	public String editEmp(@PathVariable int id, Model m) {
		
		Emp emp = empDao.getEmployeeById(id);
		m.addAttribute("emp", emp);
		return "edit_emp";
	}
	
	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute Emp emp, HttpSession session) {
		empDao.updateEmployee(emp);
		session.setAttribute("msg","Update Successfully !!!");
		return "redirect:/home";
	}
	
	@RequestMapping(path ="/deleteEmp/{id}")
	public String deleteEmp(@PathVariable int id, HttpSession session) {
		empDao.deleteEmployee(id);
		session.setAttribute("msg", "Employee Details Deleted Sucessfully !!!");
		return "redirect:/home";
	}
	
	@RequestMapping("/login")
	public  String loginPage() {
		return "login";
	}
	
	@RequestMapping("/profile")
	public  String profilePage() {
		return "profile";
	}
	
	@RequestMapping(path = "/emplogin",method = RequestMethod.POST)
	public String login(@RequestParam("loginId") String nm, @RequestParam("password") String pwd, HttpSession session) {
		
		Emp emp = empDao.loginEmp(nm, pwd);
		if(emp != null) {
			session.setAttribute("loginEmp", emp);
			return "profile";
		}
		else {
			session.setAttribute("msg","Invalid LoginId or Password");
		}
		return "redirect:/login";
	}
}
