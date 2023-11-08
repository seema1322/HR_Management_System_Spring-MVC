package com.ty.driver;

import java.io.FileNotFoundException;
import java.io.IOException;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dao.AttendanceDao;
import com.ty.dao.BatchDao;
import com.ty.dao.UserDao;
import com.ty.dto.Attendance;
import com.ty.dto.Batch;
import com.ty.dto.Image;
import com.ty.dto.User;
import com.ty.email.EmailSender;

@Controller
public class DriverController {

	@GetMapping("/save")
	public ModelAndView saveUser(HttpServletRequest req) {

		String empId = req.getParameter("empId");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String password = req.getParameter("password");
		//String role = req.getParameter("trainer");
		boolean status = true;

		User user = new User();
		user.setEmpId(empId);
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNumber(phone);
		user.setPassword(password);
		user.setRole("Trainer");
		user.setStatus(status);

		UserDao userDao = new UserDao();
		userDao.saveUser(user);

		ModelAndView view = new ModelAndView("displaytrainer.jsp");
		view.addObject("user", user);
		return view;
	}
	@GetMapping("/saveHr")
	public ModelAndView saveUserAsHR(HttpServletRequest req) {

		String empId = req.getParameter("empId");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String password = req.getParameter("password");
		String role = req.getParameter("trainer");
		boolean status = true;

		User user = new User();
		user.setEmpId(empId);
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNumber(phone);
		user.setPassword(password);
		user.setRole(role);
		user.setStatus(status);

		UserDao userDao = new UserDao();
		userDao.saveUser(user);

		ModelAndView view = new ModelAndView("displaytrainer.jsp");
		view.addObject("user", user);
		return view;
	}

	@PostMapping("/homepage")
	public ModelAndView loginController(HttpServletRequest req) {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		UserDao userDao = new UserDao();

		try {
			User user = userDao.findByEmailPassword(email, password);
			ModelAndView view;
			if (user.getRole().equalsIgnoreCase("manager")) {

				view = new ModelAndView("managerhome.jsp");
				view.addObject(user);

			} else if (user.getRole().equalsIgnoreCase("hr")) {

				view = new ModelAndView("hrhome.jsp");
				view.addObject(user);

			} else {

				view = new ModelAndView("trainerhome.jsp");
				view.addObject("user", user);
			}
			return view;

		} catch (NoResultException e) {
			ModelAndView view = new ModelAndView("login.jsp");
			view.addObject("message", "Invalid Credentials");
			return view;

		}
	}

	@GetMapping("/addbatch")
	public ModelAndView addBatch( HttpServletRequest req) {

		BatchDao batchDao = new BatchDao();
		boolean status = true;
		int userid= Integer.parseInt(req.getParameter("userid"));
		String subject = req.getParameter("subject");

		Batch batch = new Batch();
		batch.setSubject(subject);
		batch.setStatus(status);
		ModelAndView view;
		try {
			Batch batch1 = batchDao.saveBatch(batch, userid);
			UserDao userDao = new UserDao();
			User user = userDao.fndUserById(userid);
			EmailSender emailSender = new EmailSender();
			String toemail = user.getEmail();
			int id = batch1.getId();
			String url= "http://localhost:8080/hrms/attendanceform.jsp?id="+id;
			
			String from = "hrmstest1322@gmail.com";
			String subject1 = "New Batch Assigned!!";
			String text = "Hello " + user.getName() + ", \nNew Batch for the " + batch.getSubject()
					+ " subject is assigned to you\nrefer the link below \n"+url;

			boolean result = emailSender.sendEmail(toemail, from, subject1, text);

			if (result) {
				System.out.println("mail sent");
			} else {
				System.out.println("failed to send");
			}

			view = new ModelAndView("displaybatch.jsp");
			view.addObject("message", "Batch assigned successfully");

		} catch (NoResultException e) {

			view = new ModelAndView("displaybatch.jsp");
			view.addObject("message", "Incorrect User details");
		}

		return view;
	}

	@RequestMapping("/addattendance")
	public ModelAndView saveAttendances(HttpServletRequest req, @RequestParam("image") MultipartFile image) {

		ModelAndView view = new ModelAndView("displayimage.jsp");
		AttendanceDao attendanceDao = new AttendanceDao();
		int batchid = Integer.parseInt(req.getParameter("batchId"));
		int studentPresent = Integer.parseInt(req.getParameter("numberOfStudent"));

		try {

			byte[] photo = image.getBytes();
			Image image1 = new Image();
			image1.setFile(photo);
			Attendance attendance = new Attendance();
			attendance.setNumberOfStudent(studentPresent);
			attendance.setImage(image1);

			attendanceDao.saveAttendance(attendance, batchid);
			view.addObject("image", image1);
			view.addObject("message", "Attendance and Image added to database");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		view.addObject("message", "Failed to add Attendance and Image");
		return view;
	}

	@RequestMapping("/updatebatch")
	public ModelAndView updateBatchStatus(HttpServletRequest req) {
		int batchid = Integer.parseInt(req.getParameter("id"));
		int userid = Integer.parseInt(req.getParameter("userid"));

		BatchDao batchDao = new BatchDao();
		batchDao.updateBatch(batchid);

		ModelAndView modelAndView = new ModelAndView("displaytrainerbatch.jsp");
		modelAndView.addObject("id", userid);
		return modelAndView;
	}
}
