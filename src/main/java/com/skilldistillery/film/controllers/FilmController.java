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
	
	@RequestMapping(path = "createFilm.do", method = RequestMethod.GET)
	public ModelAndView goToCreateFilm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/create.jsp");
		return mv;
	}
	
	@RequestMapping(path = "notDeleted.do", method = RequestMethod.GET)
	public ModelAndView goToNotDeleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/not-deleted.jsp");
		return mv;
	}
	
	@RequestMapping(path = "notFound.do", method = RequestMethod.GET)
	public ModelAndView goToNotFound() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/not-found.jsp");
		return mv;
	}

	@RequestMapping(path = "getFilmByID.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView getFilmByID(int filmID) {

		System.out.println(filmID);
		Film film = filmDAO.findFilmById(filmID);
		ModelAndView mv = new ModelAndView();
		if(film == null) {
			mv.setViewName("notFound.do");
			return mv;
		}
		System.out.println(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView deleteFilm(int filmID) {

		ModelAndView mv = new ModelAndView();
		
		if(filmDAO.deleteFilmById(filmID) == true) {
		mv.setViewName("WEB-INF/deleted.jsp");
		} else {
		mv.setViewName("notDeleted.do");
		}
		return mv;
	}

}
