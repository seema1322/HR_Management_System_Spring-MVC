package com.ty.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.dto.Image;

public class ImageDao {

	private static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("seema");
	private static EntityManager entityManager = entityManagerFactory.createEntityManager();

	public List<Image> findAllImages() {
		Query query = entityManager.createQuery("select i from Image i");
		List<Image> images = query.getResultList();

		if (!images.isEmpty()) {
			return images;
		}
		return null;
	}

	public Image displayImageById(int imageid) {
		
		Image image= entityManager.find(Image.class, imageid);
		if (image != null) {
			return image;
		}
		return null;
		
	}
}
