package com.builders.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.builders.dao.PlanDao;
import com.builders.model.Member;
import com.builders.model.Plans;
import com.builders.model.Trainer;
import com.builders.util.HibernateUtil;

public class PlanDaoImpl implements PlanDao {

	@Override
	public boolean addPlan(Plans plan) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(plan);
		session.flush();
		transaction.commit();
		return true;

	}

	@Override
	public boolean deletePlan(int planId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Plans plan = new Plans();
		plan.setPlanId(planId);
		;
		session.delete(plan);
		transaction.commit();
		session.flush();
		return true;

	}

	@Override
	public boolean updatePlan(Plans plan) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			session.update(plan);
			transaction.commit();
			session.flush();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;

	}

	@Override
	public Plans getPlanById(int planId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Plans plan = (Plans) session.get(Plans.class, planId);
		transaction.commit();
		session.flush();
		return plan;

	}

	@Override
	public List<Plans> getAllPlan() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Plans");
		List<Plans> planList = (List<Plans>) query.list();
		transaction.commit();
		session.flush();
		return planList;
	}

	@Override
	public List<Plans> getPlanByName(String planName) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query query = session.createQuery("from Plans where planName = '" + planName + "'");
		List<Plans> planList = (List<Plans>) query.list();
		tt.commit();
		session.flush();

		return planList;

	}

	/*
	 * @Override public double getAmountByPlanId(int planId) { SessionFactory
	 * sessionFactory = HibernateUtil.getSessionFactory(); Session session =
	 * sessionFactory.openSession(); Transaction transaction =
	 * session.beginTransaction(); Query query =
	 * session.createQuery("select amount from Plans where planId=:planId");
	 * query.setParameter("planId",planId); double amount =query.getFirstResult();
	 * System.out.println("Amount for the plan in dao impl:"+amount);
	 * transaction.commit(); session.flush(); return amount;
	 * 
	 * 
	 * }
	 * 
	 * 
	 */

}
