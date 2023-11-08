package com.ty.daotest;

import java.util.List;

import javax.persistence.NoResultException;

import org.junit.Test;

import com.ty.dao.BatchDao;
import com.ty.dto.Batch;

public class TestBatchDao {

	BatchDao batchDao = new BatchDao();

	@Test
	public void saveBatch() {
		Batch batch = new Batch();
		batch.setStatus(true);
		batch.setSubject("MT");
		try {
			Batch batch1 = batchDao.saveBatch(batch, 8);
			if (batch1 != null) {
				System.out.println("Failed1");
			}
		} catch (NoResultException e) {
			System.out.println(" Passed1");
		}

	}

	@Test
	public void findAllBatch() {
		List<Batch> batchs = batchDao.findAllBatches();
		if (batchs != null) {
			System.out.println("Passed2");
		} else {
			System.out.println("Failed2");
		}
	}

	@Test
	public void updateBatch() {

		boolean result = batchDao.updateBatch(17);
		if (result) {
			System.out.println("Passed3");
		} else {
			System.out.println("Failed3");
		}
	}
	
	@Test
	public void updateBatchwithWrongId() {

		boolean result = batchDao.updateBatch(22);
		if (result) {
			System.out.println("Failed3 with wrong");
		} else {
			System.out.println("Passed3 with wrong");
		}
	}

	@Test
	public void findBatchById() {
		Batch batch = batchDao.findBatchById(17);
		if (batch != null && batch.isStatus()==false) {
			System.out.println("Passed4");
		} else {
			System.out.println("Failed4");
		}
	}
	
	@Test
	public void findBatchByWrongId() {
		Batch batch = batchDao.findBatchById(22);
		if (batch != null && batch.isStatus()==false) {
			System.out.println("Failed4 with wrong");
		} else {
			System.out.println("Passed4 with wrong");
		}
	}

	@Test
	public void findBatchByUserId() {
		List<Batch> batches = batchDao.findBatchByUserId(2);
		if (batches != null) {
			System.out.println("Passed5");
		} else {
			System.out.println("Failed5");
		}
	}
	
	@Test
	public void findBatchByWrongUserId() {
		List<Batch> batches = batchDao.findBatchByUserId(22);
		if (batches != null) {
			System.out.println("Failed6 with wrong");
		} else {
			System.out.println("Passed6 with wrong");
		}
	}

}
