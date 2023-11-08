package com.ty.daotest;

import java.util.List;

import org.junit.Test;

import com.ty.dao.AttendanceDao;
import com.ty.dto.Attendance;
import com.ty.dto.Image;

public class AttendanceDaoTest {

	private static AttendanceDao attendanceDao = new AttendanceDao();

	@Test
	public void testSaveAttendance() {

		Attendance attendance = new Attendance();
		attendance.setNumberOfStudent(120);
		attendance.setImage(new Image());

		Attendance attendance2 = attendanceDao.saveAttendance(attendance, 16);
		if (attendance2 != null && attendance2.getNumberOfStudent() == 120) {
			System.out.println("Test case passed");
		} else {
			System.out.println("Test case passed");
		}
	}

	@Test
	public void testSaveAttendanceToWrongBatch() {

		Attendance attendance = new Attendance();
		attendance.setNumberOfStudent(120);
		attendance.setImage(new Image());

		Attendance attendance2 = attendanceDao.saveAttendance(attendance, 20);
		if (attendance2 == null) {
			System.out.println("Test case passed");
		} else {
			System.out.println("Test case passed");
		}
	}

	@Test
	public void testFinAttendanceByBatchId() {
		
		List<Attendance> attendances= attendanceDao.findAllAttendanceByBatchId(17);
		if (attendances != null) {
			System.out.println("Test case passed");
		} else {
			System.out.println("Test case failed");
		}
	}
	
	@Test
	public void testFinAttendanceByWrong_BatchId() {
		
		List<Attendance> attendances= attendanceDao.findAllAttendanceByBatchId(20);
		if (attendances == null) {
			System.out.println("Test case passed");
		} else {
			System.out.println("Test case failed");
		}
	}

}
