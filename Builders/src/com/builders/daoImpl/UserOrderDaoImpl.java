package com.builders.daoImpl;


import java.util.Arrays;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.builders.dao.UserOrderDao;
import com.builders.model.BuyDetails;

import com.builders.model.Plans;

import com.builders.util.HibernateUtil;

public class UserOrderDaoImpl implements UserOrderDao {

	@Override
	public boolean deleteOrder(int orderId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		BuyDetails order = new BuyDetails();
		order.setOrderId(orderId);
		session.delete(order);
		transaction.commit();
		session.flush();
		return true;
	}

	@Override
	public Plans getOrderById(int orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BuyDetails> getAllOrder() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from MemberOrder");
		List<BuyDetails> orderList = (List<BuyDetails>) query.list();
		transaction.commit();
		session.flush();
		return orderList;
	}

	@Override
	public boolean addOrder(BuyDetails order) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(order);
		session.flush();
		transaction.commit();
		return true;
	}

	@Override
	public boolean updateOrder(BuyDetails order) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			session.update(order);
			transaction.commit();
			session.flush();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public Integer getPlanIdByMemberId(int memberId) {
		try {

			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select planId from BuyDetails where memberId=:memberId");
			query.setParameter("memberId", memberId);
			System.out.println("result is userorderdaoimpl: " + query.uniqueResult());

			transaction.commit();
			session.flush();

			return (Integer) query.uniqueResult();
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}
		return 0;
	}

	@Override
	public String getOrderDateByPlanId(int planId) {
		try {

			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select order_date from BuyDetails where planId=:planId");
			query.setParameter("planId", planId);
			System.out.println("result is date: " + query.uniqueResult());
			transaction.commit();
			session.flush();

			return (String) query.uniqueResult();
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}
		return null;

	}

	@Override
	public boolean MemberIdAndPlanIdExist(int memberId) {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			// Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select count(orderId) from BuyDetails where memberId=:memberId");
			query.setParameter("memberId", memberId);

			System.out.println("RESULT IS :--------------" + query.getFirstResult());

			long orderId = (Long) query.setMaxResults(1).uniqueResult();
			System.out.println("orderid is: " + orderId);
			session.flush();

			if (orderId > 0) {
				return false;
			} else {
				return true;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;

	}

	@Override
	public long CountTotalOrders() {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select count(*) from BuyDetails");
			query.uniqueResult();
			long count = (Long) query.setMaxResults(1).uniqueResult();

			System.out.println("Count of orders is dao impl: " + count);
			session.flush();
			transaction.commit();
			return count;
		}

		catch (HibernateException ex) {
			ex.printStackTrace();

			return 0;

		}

	}

	@Override
	public List<Object[]> getRecentFiveOrders() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery(
				"select b.orderId as orderId,  m.firstName as firstName , b.order_date as orderDate, p.planName as planName, p.amount as amount "
				+ "from BuyDetails b INNER JOIN b.plan as p INNER JOIN b.member as m"
				+ " ORDER BY b.orderId DESC");
		List<Object[]> list = query.setMaxResults(5).list();
		for (Object[] arr : list) {
			System.out.println("List is :" + Arrays.toString(arr));
		}
		System.out.println("OUTPUT JOINS IN DAO IMPL IS :" + list);

		transaction.commit();
		session.flush();

		return list;

	}

	@Override
	public double orderTotal() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("select sum(p.amount) as totalAmount from BuyDetails b INNER JOIN b.plan as p");
		
		System.out.println("order amount in dao impl: " + query.uniqueResult());
		long amount = (Long) query.uniqueResult();
		
		System.out.println("order amount in dao impl: " + query.uniqueResult());
		transaction.commit();
		session.flush();

		return amount;
	}

}
