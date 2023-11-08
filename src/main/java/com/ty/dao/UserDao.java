package com.ty.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.ty.dto.User;

@Component
public class UserDao {

	private static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("seema");
	private static EntityManager entityManager = entityManagerFactory.createEntityManager();
	private static EntityTransaction entityTransaction = entityManager.getTransaction();

	public User saveUser(User user) {
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
		return user;
	}

	public User updateUser(User user) {
		User user1 = entityManager.find(User.class, user.getId());

		if (user1 != null) {
			user1.setStatus(user.isStatus());
			entityTransaction.begin();
			entityManager.merge(user1);
			entityTransaction.commit();
			return user;
		}
		return null;
	}

	public User findByEmailPassword(String email, String password) {
		Query query = entityManager.createQuery("Select u from User u where u.email=?1 and u.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);

		List<User> users = query.getResultList() ;

		if (users != null && !users.isEmpty()) {
			for (User user : users) {
				return user;
			}
			
		}
		return null;
	}

	public List<User> findAllUser() {
		Query query = entityManager.createQuery("Select u from User u");
		List<User> users = query.getResultList();
		if (users != null) {
			return users;
		}
		return null;
	}

	public List<User> findUserByRole(String role) {
		Query query = entityManager.createQuery("Select u from User u where u.role=?1");
		query.setParameter(1, role);
		List<User> users = query.getResultList();
		if (users != null) {
			return users;
		}

		return null;
	}

	public List<User> findUserByStatus(boolean status) {

		Query query = entityManager.createQuery("Select u from User u where u.status=?1");
		query.setParameter(1, status);
		List<User> users = query.getResultList();
		if (users != null) {
			return users;
		}

		return null;
	}

	public boolean deleteUser(int id) {
		Query query = entityManager.createQuery("Select u from User u where u.id=?1");
		query.setParameter(1, id);

		List<User> users =query.getResultList() ;

		User user= null;
		if (users != null && !users.isEmpty()) {
			
			for (User user2 : users) {
				if (user2 != null) {
					user=user2;
				}
			}
		}
		
		if (user!=null) {
			entityTransaction.begin();
			entityManager.remove(user);
			entityTransaction.commit();
			return true;
		}
		return false;
	}

	public User fndUserById(int id) {

		User user = entityManager.find(User.class, id);

		if (user != null) {
			return user;
		}
		return null;

	}

}
