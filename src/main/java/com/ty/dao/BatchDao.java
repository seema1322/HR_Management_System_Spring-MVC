package com.ty.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.ty.dto.Batch;
import com.ty.dto.User;

@Component
public class BatchDao {

	private static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("seema");
	private static EntityManager entityManager = entityManagerFactory.createEntityManager();
	private static EntityTransaction entityTransaction = entityManager.getTransaction();

	public Batch saveBatch(Batch batch, int userid) {

		Query query = entityManager.createQuery("select u from User u where u.id=?1");
		query.setParameter(1, userid);
		User user = (User) query.getSingleResult();

		if (user != null) {

			if (user.getRole().equalsIgnoreCase("trainer")) {
				List<Batch> batches = user.getBatches();
				batches.add(batch);
				user.setBatches(batches);
				entityTransaction.begin();
				entityManager.persist(batch);
				entityTransaction.commit();
				return batch;
			}

		}
		throw new NoResultException();

	}

	public List<Batch> findBatchByUserId(int userid) {
		Query query = entityManager.createQuery("select u from User u");
		List<User> users = query.getResultList();

		if (users != null) {
			for (User user : users) {
				if (user.getId()==userid) {

					List<Batch> batches = user.getBatches();
					if (batches.isEmpty() == false) {
						return batches;
					}
				}
			}
		}
		return null;
	}

	public Batch findBatchById(int batchid) {
		Batch batch = entityManager.find(Batch.class, batchid);

		if (batch != null) {
			return batch;
		}
		return null;
	}

	public boolean updateBatch(int id) {

		Batch batch = entityManager.find(Batch.class, id);

		if (batch != null) {

			batch.setStatus(false);
			entityTransaction.begin();
			entityManager.merge(batch);
			entityTransaction.commit();
			return true;

		}
		return false;
	}

	public List<Batch> findAllBatches() {
		Query query = entityManager.createQuery("select b from Batch b");
		List<Batch> batches = query.getResultList();

		if (batches.isEmpty() == false) {
			return batches;
		}
		return null;
	}

}
