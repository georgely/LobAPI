package cn.itcast.oa.domain;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import cn.itcast.oa.domain.Information;

@SuppressWarnings("deprecation")
public class SaveData {
	public void savedata(Information information){  
        Information s = new Information();  
        s.setName(information.getName());
        s.setEmail(information.getEmail());
        s.setAddress1(information.getAddress1());
        s.setAddress2(information.getAddress2());
        s.setCity(information.getCity());
        s.setState(information.getState());
        s.setZipcode(information.getZipcode());
        s.setCountry(information.getCountry());
        s.setMessage(information.getMessage());
          
        @SuppressWarnings("deprecation")
		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();  
        Session session = sessionFactory.getCurrentSession();  
        session.beginTransaction();  
        session.save(s);  
        session.getTransaction().commit();  
    } 
}
