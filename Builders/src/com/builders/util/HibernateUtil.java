package com.builders.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	public static SessionFactory sessionFactory;

	static {

		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

		sessionFactory = cfg.buildSessionFactory();

	}

	public static SessionFactory getSessionFactory() {

		return sessionFactory;
	}

}
