package com.mar.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.mar.entities.Movie;

/**
 * = MovieRepositoryImpl
 *
 * Implementation of MovieRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = MovieRepositoryCustom.class)
public class MovieRepositoryImpl extends QueryDslRepositorySupportExt<Movie> implements MovieRepositoryCustom{

    /**
     * Default constructor
     */
    MovieRepositoryImpl() {
        super(Movie.class);
    }
}