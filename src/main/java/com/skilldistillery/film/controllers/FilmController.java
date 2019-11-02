package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(path = "getFilmByID.do", params = "filmID", method = RequestMethod.POST)
	public ModelAndView getFilmByID(int filmID) {

		Film film = filmDAO.findFilmById(filmID);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView deleteFilm(int filmID) {

		ModelAndView mv = new ModelAndView();
		filmDAO.deleteFilmById(filmID);
		mv.setViewName("WEB-INF/deleted.jsp");
		return mv;
	}

	@RequestMapping(path = "createFilm.do", method = RequestMethod.GET)
	public ModelAndView createFilm() {
		
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		mv.setViewName("WEB-INF/results.jsp");
		return mv;
	}

}
