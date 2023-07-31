package com.prajwal.dao;

import java.util.List;

import com.prajwal.entity.Emp;

public interface EmpDao {
	
	public int saveEmp(Emp emp);
	
	public Emp getEmployeeById(int id);
	
	public List<Emp> getAllEmployee();
	
	public void updateEmployee(Emp emp);
	
	public void deleteEmployee(int id);
	
	public Emp loginEmp(String email, String password);
	
}
