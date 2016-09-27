package com.tedpros.cms.dao;

import org.hibernate.SessionFactory;

public class GenericDAO extends CmsDAOImpl{

	public GenericDAO() {
	}

	public GenericDAO(SessionFactory sessionFactory) {
			this.setSessionFactory(sessionFactory);
	}
}
