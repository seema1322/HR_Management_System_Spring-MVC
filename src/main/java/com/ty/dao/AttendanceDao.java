package com.ty.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import com.ty.dto.Attendance;
import com.ty.dto.Batch;

@Component
public class AttendanceDao {
	private static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("seema");
	private static EntityManager entityManager = entityManagerFactory.createEntityManager();
	private static EntityTransaction entityTransaction = entityManager.getTransaction();

	public Attendance saveAttendance(Attendance attendance, int batchid) {

		Batch batch = entityManager.find(Batch.class, batchid);

		if (batch != null) {
			List<Attendance> attendances = batch.getAttendances();
			attendances.add(attendance);

			entityTransaction.begin();
			entityManager.persist(attendance);
			entityTransaction.commit();
			return attendance;
		}
		return null;
	}

	public List<Attendance> findAllAttendanceByBatchId(int batchid) {

		Batch batch = entityManager.find(Batch.class, batchid);
		if (batch != null) {
			List<Attendance> attendances = batch.getAttendances();
			if (attendances.isEmpty() == false) {
				return attendances;
			} else {
				return null;
			}
		}
		return null;
	}

}
