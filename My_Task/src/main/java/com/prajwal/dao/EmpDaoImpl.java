package com.prajwal.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prajwal.entity.Emp;

@Repository
public class EmpDaoImpl implements EmpDao{
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveEmp(Emp emp) {
		int i = (Integer)hibernateTemplate.save(emp);
		return i;
	}

	
	public Emp getEmployeeById(int id) {
		Emp ep = hibernateTemplate.get(Emp.class,id);
		return ep;
	}

	
	public List<Emp> getAllEmployee() {
		List<Emp> list = hibernateTemplate.loadAll(Emp.class);
		return list;
	}

	@Transactional
	public void updateEmployee(Emp emp) {
		hibernateTemplate.update(emp);		
	}

	@Transactional
	public void deleteEmployee(int id) {
		Emp ep = hibernateTemplate.get(Emp.class,id);
		hibernateTemplate.delete(ep);
	}


	@Override
	public Emp loginEmp(String loginId, String password) {
		
		String sql = "from Emp where loginId =:nm and password=:pwd";
		
		Emp em = (Emp) hibernateTemplate.execute(s->{
			Query q=s.createQuery(sql);
			q.setString("nm",loginId);
			q.setString("pwd",password);
			return q.uniqueResult();
		});
		return em;
	}
	
	
}

