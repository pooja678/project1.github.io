package com.builders.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.builders.dao.TimeTableDao;
import com.builders.model.Plans;
import com.builders.model.TimeTable;
import com.builders.model.Trainer;
import com.builders.util.HibernateUtil;

public class TimeTableDaoImpl implements TimeTableDao {

	@Override
	public boolean addSchedule(TimeTable timeTable) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(timeTable);
		session.flush();
		transaction.commit();
		return true;
	}

	@Override
	public boolean deleteSchedule(int scheduleId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		TimeTable timeTable = new TimeTable();
		timeTable.setScheduleId(scheduleId);
		session.delete(timeTable);
		transaction.commit();
		session.flush();
		return true;

	}

	@Override
	public boolean updateSchedule(TimeTable timeTable) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			session.update(timeTable);
			transaction.commit();
			session.flush();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public TimeTable getScheduleById(int scheduleId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		TimeTable timeTable = (TimeTable) session.get(TimeTable.class, scheduleId);
		transaction.commit();
		session.flush();
		return timeTable;
	}

	@Override
	public List<TimeTable> getScheduleByDay(String day) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query query = session.createQuery("from TimeTable where day = '" + day + "'");
		List<TimeTable> list = (List<TimeTable>) query.list();
		tt.commit();
		session.flush();

		return list;

	}

	@Override
	public List<TimeTable> getAllSchedule() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from TimeTable");
		List<TimeTable> scheduleList = (List<TimeTable>) query.list();
		transaction.commit();
		session.flush();
		return scheduleList;
	}

}
