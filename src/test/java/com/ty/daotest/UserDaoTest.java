package com.ty.daotest;

import java.util.List;

import org.junit.Test;

import com.ty.dao.UserDao;
import com.ty.dto.User;

public class UserDaoTest {
	private static UserDao userDao = new UserDao();

	@Test
	public void testSaveUser() {

		User user = new User();
		user.setName("kiran");
		user.setEmail("k@gmail.com");
		user.setEmpId("Emp-6");
		user.setPassword("1234");
		user.setPhoneNumber(983456789);
		user.setRole("Trainer");
		user.setStatus(true);

		User user1 = userDao.saveUser(user);

		if (user1 != null) {
			System.out.println("Test passed of user " + user1.getName() + " Details saved ");
		} else {
			System.out.println("Test Case Failed");
		}

	}

	@Test
	public void testUpdateUser() {
		User user = new User();
		user.setId(10);
		user.setStatus(false);

		User user1 = userDao.updateUser(user);
		if (user1!=null && user1.isStatus() == false) {

			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}

	@Test
	public void testFindByEmailPassword() {

		User user1 = userDao.findByEmailPassword("seema@gmail.com", "1234");
		if (user1!=null && user1.isStatus() == false) {

			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}

	@Test
	public void testFindByEmailWrong_Password() {

		User user1 = userDao.findByEmailPassword("s@gmail.com", "1234");
		if (user1 == null) {

			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}

	@Test
	public void testFindByWrong_EmailPassword() {

		User user1 = userDao.findByEmailPassword("seema@gmail.com", "124");
		if (user1 == null) {

			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}

	@Test
	public void testFindAllUsers() {

		List<User> users = userDao.findAllUser();
		if (!users.isEmpty() && users != null) {

			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}

	@Test
	public void testFindUserByRole() {

		List<User> users = userDao.findUserByRole("trainer");
		if (!users.isEmpty() && users != null) {
			for (User user : users) {
				if (!user.getRole().equalsIgnoreCase("trainer")) {
					System.out.println("Test Case Failed");
					break;
				}
			}

		} else {
			System.out.println("Test Case Passed");
		}
	}

	@Test
	public void testFindUserByRole1() {

		List<User> users = userDao.findUserByRole("manager");
		if (!users.isEmpty()) {
			for (User user : users) {
				if (!user.getRole().equalsIgnoreCase("manager")) {
					System.out.println("Test Case Failed");
					break;
				}
			}

		} else {
			System.out.println("Test Case Passed");
		}
	}

	@Test
	public void testFindUserByRole2() {

		List<User> users = userDao.findUserByRole("hr");
		if (!users.isEmpty() && users != null) {
			for (User user : users) {
				if (!user.getRole().equalsIgnoreCase("hr")) {
					System.out.println("Test Case Failed");
					break;
				}
			}

		} else {
			System.out.println("Test Case Passed");
		}
	}

	@Test
	public void testFindUserByStatus() {
		List<User> users = userDao.findUserByStatus(false);
		if (!users.isEmpty()) {
			for (User user : users) {
				if (user.isStatus()) {
					System.out.println("Test Case Failed");
					break;
				}
			}

		} else {
			System.out.println("Test Case Passed");
		}
	}

	@Test
	public void testFindUserByStatus1() {
		List<User> users = userDao.findUserByStatus(true);
		if (!users.isEmpty()) {
			for (User user : users) {
				if (!user.isStatus()) {
					System.out.println("Test Case Failed");
					break;
				}
			}

		} else {
			System.out.println("Test Case Passed");
		}
	}

	

	@Test
	public void testFindUserByCorrectId() {

		User user = userDao.fndUserById(10);

		if (user == null) {
			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}

	}
	
	
	@Test
	public void testDeleteUser() {

		boolean result = userDao.deleteUser(19);

		if (result) {
			System.out.println("Test Case Passed");
		} else {
			System.out.println("Test Case Failed");
		}
	}
}
