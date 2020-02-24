package com.mar.service.api;
import com.mar.entities.Movie;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = MovieService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Movie.class)
public interface MovieService extends EntityResolver<Movie, Long>, ValidatorService<Movie> {
}
