package com.skilldistillery.jpaactual.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpaactual.entities.Car;




@Transactional
@Component
public class CarDAOImpl implements CarDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Car create(Car car) {
		//Start transaction
		em.getTransaction().begin();
		
		
		System.out.println(car.getId());
		// write the actor to the database
		em.persist(car);
		System.out.println(car.getId());
		
		//update the "local" Actor object
		em.flush();
		
		// commit the changes (actually performs the operation)
		em.getTransaction().commit();
		
		return car;
	}

	@Override
	public Car update(int id, Car car) {
em.getTransaction().begin();
		
		
		Car managed = em.find(Car.class, id);
		managed.setMake(car.getMake());
		managed.setModel(car.getModel());
		managed.setYear(car.getYear());
		managed.setColor(car.getColor());
		managed.setDrive(car.getDrive());
		
		em.flush();
		
		em.getTransaction().commit();
		

		
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		return false;
	}

}
