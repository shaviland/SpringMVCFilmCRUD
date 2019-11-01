package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.dao.FilmDAO;

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

		// TODO : Implement a request handler for:
		// path "GetStateData.do"
		// params "name"
		// method GET
		// return : ModelAndView
		// view : "WEB-INF/result.jsp"
		// object : "state", StateDAO.getStateByName
//		@RequestMapping(path = "GetStateData.do", params = "name", method = RequestMethod.GET)
//		public ModelAndView getStateByName(@RequestParam("name") String n) {
//
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("WEB-INF/result.jsp");
//			mv.addObject("state", stateDAO.getStateByName(n));
//			return mv;
//		}
//
//		// TODO : Implement a request handler for:
//		// path "GetStateData.do"
//		// params "abbr"
//		// method GET
//		// return : ModelAndView
//		// view : "WEB-INF/result.jsp"
//		// object : "state", StateDAO.getStateByAbbreviation
//		@RequestMapping(path = "GetStateData.do", params = "abbr", method = RequestMethod.GET)
//		public ModelAndView getStateByAbbr(@RequestParam("abbr") String n) {
//
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("WEB-INF/result.jsp");
//			mv.addObject("state", stateDAO.getStateByAbbreviation(n));
//			return mv;
//		}
//
//	}

}
