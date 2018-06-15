package com.skilldistillery.jpaactual.client;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpaactual.entities.Car;

public class CarClient {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPAActual");
		EntityManager em = emf.createEntityManager();

		Car car= em.find(Car.class, 11);

		System.out.println(car);

		em.close();
		emf.close();
	}
	
	
}
