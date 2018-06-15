package com.skilldistillery.jpacrudproject.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.web.servlet.result.FlashAttributeResultMatchers;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpaactual.entities.Car;
import com.skilldistillery.jpacrudproject.data.CarDAO;

@Controller
public class CarController {
	@Autowired
	private CarDAO carDAO;

	@RequestMapping(path = "getCar.do", method = RequestMethod.GET)
	public ModelAndView getCar(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();

		Car car = carDAO.show(cid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("car", car);
		mv.setViewName("WEB-INF/show.jsp");
		return mv;
	}

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		List<Car> cars = carDAO.index();

		mv.addObject("cars", cars);
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteCar.do", method = RequestMethod.GET)
	public ModelAndView deleteCar(@RequestParam("carId") int cid) {
		ModelAndView mv = new ModelAndView();
		boolean deleted = carDAO.destroy(cid);
		mv.addObject("deleted", deleted);
		mv.setViewName("index.do");

		return mv;
	}

	@RequestMapping(path = "addCar.do", method = RequestMethod.GET, name = "addCar")
	public ModelAndView addCar() throws SQLException {
		ModelAndView mv = new ModelAndView();
		Car c = new Car();
		mv.addObject("car", c);
		mv.setViewName("WEB-INF/addcar.jsp");
		return mv;
	}

	@RequestMapping(path = "addingCar.do", method = RequestMethod.POST, name = "addingCar")
	public ModelAndView addCar(Car car, RedirectAttributes redir) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Car newCar = carDAO.create(car);
		// mv.addObject("car", newCar);
		boolean added;
		if (newCar == null) {
			added = false;
		} else {
			added = true;
		}
		// mv.addObject("added", added);
		redir.addFlashAttribute("added", added);
		mv.setViewName("redirect:index.do");
		return mv;
	}

	@RequestMapping(path = "updateCar.do", method = RequestMethod.GET, name = "updateFilm")
	public ModelAndView updateFilm(@RequestParam("carId") int cid) {
		ModelAndView mv = new ModelAndView();
		Car c = carDAO.show(cid);
		mv.addObject("car", c);
		mv.setViewName("/WEB-INF/updatecar.jsp");
		return mv;
	}

	@RequestMapping(path = "updateCarDetails.do", method = RequestMethod.POST)
	public ModelAndView updateFilmDetails(@RequestParam(name = "carId") int carId, Car car) throws SQLException {
		ModelAndView mv = new ModelAndView();
		boolean updated = false;
		car = carDAO.update(carId, car);
		if (car != null) {
			updated = true;
		}
		mv.addObject("updated", updated);
		mv.addObject("car", car);
		mv.setViewName("WEB-INF/show.jsp");
		return mv;
	}

}
