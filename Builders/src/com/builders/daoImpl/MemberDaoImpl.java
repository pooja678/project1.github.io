package com.builders.daoImpl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.builders.dao.MemberDao;
import com.builders.model.Member;
import com.builders.util.HibernateUtil;

public class MemberDaoImpl implements MemberDao {

	@Override
	public boolean addMember(Member member) {

		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.save(member);
			session.flush();
			transaction.commit();
			return true;
		}

		catch (HibernateException ex) {
			ex.printStackTrace();

			return false;

		}
	}

	@Override
	public List<Member> getMemberByUserName(String userName) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tt = session.beginTransaction();
		Query query = session.createQuery("from Member where username = '" + userName + "'");
		List<Member> cdList = (List<Member>) query.list();
		tt.commit();
		session.flush();

		return cdList;
	}

	@Override
	public boolean updateMember(Member member) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			String encryptedPassword = null;

			try {
				MessageDigest messageDigest = MessageDigest.getInstance("MD5");
				messageDigest.update(member.getPassword().getBytes());

				byte[] bytes = messageDigest.digest();

				// This bytes[] has bytes in decimal format. Convert it to hexadecimal format
				StringBuilder sb = new StringBuilder();
				for (int i = 0; i < bytes.length; i++) {
					sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
				}

				// Get complete hashed password in hex format
				encryptedPassword = sb.toString();

				System.out.println("Encrypted password is :-" + encryptedPassword);

				member.setPassword(encryptedPassword);

			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.update(member);
			transaction.commit();
			session.flush();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public Member getMemberById(int memberId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Member member = (Member) session.get(Member.class, memberId);
		transaction.commit();
		session.flush();
		return member;
	}

	@Override
	public List<Member> getAllMember() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Member");
		List<Member> memberList = (List<Member>) query.list();
		transaction.commit();
		session.flush();
		return memberList;
	}

	@Override
	public boolean deleteMember(int memberId) {

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Member member = new Member();
		member.setMemberId(memberId);
		session.delete(member);
		transaction.commit();
		session.flush();
		return true;
	}

	public Member validate(String email, String password) {

		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			String encryptedPassword = null;
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");

			messageDigest.update(password.getBytes());

			byte[] bytes = messageDigest.digest();

			// This bytes[] has bytes in decimal format. Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}

			// Get complete hashed password in hex format
			encryptedPassword = sb.toString();

			System.out.println("Encrypted password is :-" + encryptedPassword);
			Query query = session.createQuery("from Member where email=:email and password=:password");
			query.setParameter("email", email);
			query.setParameter("password", encryptedPassword);
			Member member = (Member) query.uniqueResult();
			transaction.commit();
			session.flush();

			if (member != null) {
				System.out.println("data get");
				return member;
			} else {
				System.out.println("password and id mismatch");
				return null;
			}
		}

		catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public boolean updatePassword(String email, String password) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();

			String encryptedPassword = null;
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");

			messageDigest.update(password.getBytes());

			byte[] bytes = messageDigest.digest();

			// This bytes[] has bytes in decimal format. Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}

			// Get complete hashed password in hex format
			encryptedPassword = sb.toString();

			/*
			 * int updatedEntities = session.createQuery( hqlUpdate ) .setString( "newName",
			 * newName ) .setString( "oldName", oldName ) .executeUpdate(); tx.commit();
			 * session.close();
			 */

			System.out.println("Encrypted password is :-" + encryptedPassword);
			System.out.println("Email from sesion is:-" + email);
			// Member member=new Member();

			Query query = session
					.createQuery("update Member set password = :encryptedPassword WHERE email = :userEmail");
			// query.setParameter("encryptedPassword", encryptedPassword);
			query.setParameter("encryptedPassword", encryptedPassword);
			query.setParameter("userEmail", email);
			int status = query.executeUpdate();
			System.out.println("Rows affected: " + status);

			transaction.commit();
			session.clear();
			session.flush();
			result = true;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}

		return result;
	}

	@Override
	public boolean isEmailExists(String email) {

		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("from Member");
			List<Member> memberList = (List<Member>) query.list();

			for (Member member : memberList) {
				// Checks if the user email is equal to the email parameter
				if (member.getEmail().equals(email)) {
					System.out.println("List of Member is :-" + memberList);

					transaction.commit();
					session.flush();
					return true;
				} else {
					return false;
				}

			}

		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;

	}

	@Override
	public String getMemberByEmail(String email) {
		boolean result = false;
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select userName from Member where email= :email");
			query.setParameter("email", email);
			query.uniqueResult();
			System.out.println("Result is:-"+query.uniqueResult());
			System.out.println("Query Executed................................");
			transaction.commit();
			session.flush();

		 return (String) query.uniqueResult();

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return "";
	}

	@Override
	public long CountTotalMember() {
		try {
			SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("select count(*) from Member");
			query.uniqueResult();
			long count=(Long)query.setMaxResults(1).uniqueResult();
			
			System.out.println("Count of member is dao impl: "+count);
			session.flush();
			transaction.commit();
			return  count;
		}

		catch (HibernateException ex) {
			ex.printStackTrace();

		return 0;

		}
	
	}

	@Override
	public boolean deleteFile(String path) {
		boolean f=false;
		
		try
		{
			File file=new File(path);
		f=	file.delete();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public boolean saveFile(InputStream is, String path) {
		boolean f=false;
		
		try
		{
			byte b[] =new byte[is.available()];
			is.read(b);
			
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(b);
			fos.flush();
			fos.close();
			f=true;
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		
			
			
			
		}
		return f;
	}

}
