package com.builders.daoImpl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.builders.dao.TrainerDao;

import com.builders.model.Trainer;
import com.builders.util.HibernateUtil;

public class TrainerDaoImpl implements TrainerDao {

	@Override
	public boolean addTrainer(Trainer trainer) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(trainer);
		session.flush();
		transaction.commit();
		return true;

	}

	@Override
	public boolean deleteTrainer(int trainerId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Trainer trainer = new Trainer();
		trainer.setTrainerId(trainerId);
		session.delete(trainer);
		transaction.commit();
		session.flush();
		return true;
	}

	@Override
	public boolean updateTrainer(Trainer trainer) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			/* String encryptedPassword=null; */

			/*
			 * try { MessageDigest messageDigest=MessageDigest.getInstance("MD5");
			 * messageDigest.update(trainer.getPassword().getBytes());
			 * 
			 * byte[] bytes = messageDigest.digest();
			 * 
			 * // This bytes[] has bytes in decimal format. Convert it to hexadecimal format
			 * StringBuilder sb = new StringBuilder(); for (int i = 0; i < bytes.length;
			 * i++) { sb.append(Integer.toString((bytes[i] & 0xff) + 0x100,
			 * 16).substring(1)); }
			 * 
			 * // Get complete hashed password in hex format encryptedPassword =
			 * sb.toString();
			 * 
			 * 
			 * 
			 * System.out.println("Encrypted password is :-"+ encryptedPassword);
			 * 
			 * trainer.setPassword(encryptedPassword);
			 */

			/*
			 * } catch (NoSuchAlgorithmException e) { // TODO Auto-generated catch block
			 * e.printStackTrace(); }
			 */
			session.update(trainer);
			transaction.commit();
			session.flush();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;

	}

	@Override
	public Trainer getTrainerById(int trainerId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Trainer trainer = (Trainer) session.get(Trainer.class, trainerId);
		transaction.commit();
		session.flush();
		return trainer;
	}

	@Override
	public List<Trainer> getTraingerByName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Trainer> getAllTrainer() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Trainer");
		List<Trainer> trainerList = (List<Trainer>) query.list();
		transaction.commit();
		session.flush();
		return trainerList;
	}

}
