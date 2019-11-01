package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.dao.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	@Autowired
	private FilmDAO filmDAO;

	public FilmDAO getFilmDAO() {
		return filmDAO;
	}

	public void setFilmDAO(FilmDAO filmDAO) {
		this.filmDAO = filmDAO;
	}

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public String goHome() {
		return "index.html";
	}

	@RequestMapping(path = "getFilmByID.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView getFilmByID(int filmID) {

		System.out.println(filmID);
		Film film = filmDAO.findFilmById(filmID);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/results.jsp");
		System.out.println("**************************************");
		System.out.println(film);
		System.out.println("**************************************");
		return mv;
	}

//	@RequestMapping(path = "filmByIDResults.do", params = "FilmID", method = RequestMethod.POST)
//	public ModelAndView doGetFilmByID(@RequestParam("FilmID") String n, Errors errors) {
//
//		ModelAndView mv = new ModelAndView();
//		int filmID = Integer.parseInt(n);
//		Film matchingFilm = filmDAO.findFilmById(filmID);
//
//		if (matchingFilm == null) {
//			errors.rejectValue("FilmID", "error.FilmID", "Film ID does not exist");
//		}
//
//		if (errors.getErrorCount() != 0) {
//			mv.setViewName("index.html");
//			return mv;
//		}
//
//		mv.setViewName("WEB-INF/results.jsp");
//		mv.addObject("film", filmDAO.findFilmById(filmID));
//		
//
//		return mv;
//
//	}

}
