package com.mar.web;
import com.mar.entities.Movie;
import com.mar.service.api.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MovieDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Movie.class)
public class MovieDeserializer extends JsonObjectDeserializer<Movie> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MovieService movieService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param movieService
     * @param conversionService
     */
    @Autowired
    public MovieDeserializer(@Lazy MovieService movieService, ConversionService conversionService) {
        this.movieService = movieService;
        this.conversionService = conversionService;
    }
}
