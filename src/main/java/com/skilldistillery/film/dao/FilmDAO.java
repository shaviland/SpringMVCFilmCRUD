package com.skilldistillery.film.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int filmId);

	public List<Film> findFilmByKeyword(String keyword);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public List<String> findCategoriesByFilmId(int filmId);

	public Map<Integer, String> findCopiesByFilmId(int filmId);

	public Film createFilm(Film film) throws SQLException;

	public boolean deleteFilmById(int filmId);
	
	public Film updateFilm(int filmId, Film film);
	
	public Actor createActor(Actor actor) throws SQLException;
<<<<<<< HEAD


=======
	
	public Actor updateActor(int actorId, Actor actor);
>>>>>>> f838c3bc86351ef3fd0c9dcdb0ca8be83442f994
}
