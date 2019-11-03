package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public ModelAndView goToCreateFilm(@Valid Film film) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/create.jsp");
		return mv;
	}

	@RequestMapping(path = "createdFilm.do", method = RequestMethod.POST)
	public ModelAndView goToCreatedFilm(@Valid Film film) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Film newFilm = filmDAO.createFilm(film);
		mv.addObject("film", newFilm);
		mv.setViewName("WEB-INF/results.jsp");
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

	@RequestMapping(path = "deleteFilm.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView deleteFilm(int filmID) {
		ModelAndView mv = new ModelAndView();

		if (filmDAO.deleteFilmById(filmID) == true) {
			mv.setViewName("WEB-INF/deleted.jsp");
		} else {
			mv.setViewName("notDeleted.do");
		}
		return mv;
	}

	@RequestMapping(path = "getFilmByID.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView getFilmByID(int filmID) {

		System.out.println(filmID);
		Film film = filmDAO.findFilmById(filmID);
		ModelAndView mv = new ModelAndView();
		if (film == null) {
			mv.setViewName("notFound.do");
			return mv;
		}
		System.out.println(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;
	}

	@RequestMapping(path = "findFilmByKeyword.do", params = "filmKey", method = RequestMethod.GET)
	public ModelAndView findFilmByKeyword(String filmKey) {

		System.out.println(filmKey);
		List<Film> films = filmDAO.findFilmByKeyword(filmKey);
		ModelAndView mv = new ModelAndView();
		if (films.size() == 0) {
			mv.setViewName("WEB-INF/not-found.jsp");
			return mv;
		}
		System.out.println(films);
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/keyword-results.jsp");
		return mv;
	}

	@RequestMapping(path = "goToUpdateFilm.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView goToUpdateFilm(@Valid Film film, int filmID) {
		ModelAndView mv = new ModelAndView();
		Film oldFilm = filmDAO.findFilmById(filmID);
		mv.addObject("filmID", filmID);
		mv.addObject("oldFilm", oldFilm);
		mv.setViewName("WEB-INF/update.jsp");
		return mv;
	}

	@RequestMapping(path = "updateFilm.do", params = "filmID", method = RequestMethod.POST)
	public ModelAndView updateFilm(@Valid Film film, int filmID) {
		ModelAndView mv = new ModelAndView();

		Film updatedFilm = filmDAO.updateFilm(filmID, film);
		if (!film.equals(updatedFilm)) {
			mv.setViewName("WEB-INF/not-updated.jsp");
		} else {
			mv.addObject("film", updatedFilm);
			mv.setViewName("WEB-INF/results.jsp");
		}
		return mv;
	}

}
