package com.mar.repository;
import com.mar.entities.Movie;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = MovieRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Movie.class)
public interface MovieRepository extends DetachableJpaRepository<Movie, Long>, MovieRepositoryCustom {
}
