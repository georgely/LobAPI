package cn.itcast.oa.test;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.oa.domain.User;
import cn.itcast.oa.domain.Information;

@Service("testService")
public class TestService {
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveTwoUsers() {
		Session session = sessionFactory.getCurrentSession();
		session.save(new User());
		//int a = 1/0;
		session.save(new User());
	}
	
	@Transactional
	public void saveInformation() {
		Session session = sessionFactory.getCurrentSession();
		session.save(new Information());
	}
}
