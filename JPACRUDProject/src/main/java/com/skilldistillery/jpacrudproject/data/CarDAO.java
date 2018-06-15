package com.skilldistillery.jpacrudproject.data;

import java.util.List;

import com.skilldistillery.jpaactual.entities.Car;
public interface CarDAO {
	public Car create(Car car);
	
	public Car update(int id, Car car);
	
	public boolean destroy(int id);
	
	public Car show(int id);

	public List<Car> index();
	
}
