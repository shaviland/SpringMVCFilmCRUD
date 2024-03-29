package com.skilldistillery.film.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

	public boolean deleteActorById(int actorId);

	public Actor updateActor(int actorId, Actor actor);

	public boolean addActorIntoFilm(int actorID, int filmID) throws SQLException;

	boolean removeActorFromFilm(int actorID, int filmID) throws SQLException;

	public Map<Integer, String> listInventoryItems(int filmID) throws SQLException;
}
