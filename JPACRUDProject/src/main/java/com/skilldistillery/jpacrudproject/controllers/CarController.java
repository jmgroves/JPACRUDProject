package com.skilldistillery.jpacrudproject.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpaactual.entities.Car;
import com.skilldistillery.jpacrudproject.data.CarDAO;

@Controller
public class CarController {
	@Autowired
	private CarDAO carDAO;
	
	@RequestMapping(path = "getCar.do", method = RequestMethod.GET)
	  public ModelAndView getFilm(@RequestParam("fid") int fid) {
	    ModelAndView mv = new ModelAndView();

	    Car car = carDAO.show(fid);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("car", car);
	    mv.setViewName("WEB-INF/show.jsp");
	    return mv;
	  }
	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView welcome(){
		ModelAndView mv = new ModelAndView();
		List<Car> cars = carDAO.index();
		
		// film is unmanaged after it is outside of the transaction that exists in the DAO
		mv.addObject("cars", cars);
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}
	


}
