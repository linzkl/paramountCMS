package com.tedpros.cms.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class GenericDAO extends CmsDAOImpl{

	@Autowired
	private static SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		GenericDAO.sessionFactory = sessionFactory;
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public GenericDAO() {
	}

	public GenericDAO(SessionFactory sessionFactory) {
			this.setSessionFactory(sessionFactory);
	}
}
