package com.skilldistillery.jpaactual.data;

import com.skilldistillery.jpaactual.entities.Car;

public interface CarDAO {
	public Car create(Car car);
	
	public Car update(int id, Car car);
	
	public boolean destroy(int id);
}
