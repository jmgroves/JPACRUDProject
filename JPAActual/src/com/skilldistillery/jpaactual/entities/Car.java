package com.skilldistillery.jpaactual.entities;

import javax.persistence.*;

@Entity
public class Car{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String make;
	private String model;
	private String  color;
	
	//Getters and setters begin
	
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	private int year;
	private String drive;
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDrive() {
		return drive;
	}
	public void setDrive(String drive) {
		this.drive = drive;
	}
	public int getId() {
		return id;
	}
	
	//toString
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [id=");
		builder.append(id);
		builder.append(", make=");
		builder.append(make);
		builder.append(", model=");
		builder.append(model);
		builder.append(", year=");
		builder.append(year);
		builder.append(", drive=");
		builder.append(drive);
		builder.append("]");
		return builder.toString();
	}
	
	
}