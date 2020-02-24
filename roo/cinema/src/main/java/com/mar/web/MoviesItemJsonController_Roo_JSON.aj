// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.entities.Movie;
import com.mar.service.api.MovieService;
import com.mar.web.MoviesItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect MoviesItemJsonController_Roo_JSON {
    
    declare @type: MoviesItemJsonController: @RestController;
    
    declare @type: MoviesItemJsonController: @RequestMapping(value = "/api/movies/{movie}", name = "MoviesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MovieService MoviesItemJsonController.movieService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param movieService
     */
    @Autowired
    public MoviesItemJsonController.new(MovieService movieService) {
        this.movieService = movieService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MovieService
     */
    public MovieService MoviesItemJsonController.getMovieService() {
        return movieService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movieService
     */
    public void MoviesItemJsonController.setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Movie
     */
    @ModelAttribute
    public Movie MoviesItemJsonController.getMovie(@PathVariable("movie") Long id) {
        Movie movie = movieService.findOne(id);
        if (movie == null) {
            throw new NotFoundException(String.format("Movie with identifier '%s' not found",id));
        }
        return movie;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movie
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> MoviesItemJsonController.show(@ModelAttribute Movie movie) {
        return ResponseEntity.ok(movie);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movie
     * @return UriComponents
     */
    public static UriComponents MoviesItemJsonController.showURI(Movie movie) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(MoviesItemJsonController.class).show(movie))
            .buildAndExpand(movie.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedMovie
     * @param movie
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> MoviesItemJsonController.update(@ModelAttribute Movie storedMovie, @Valid @RequestBody Movie movie, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        movie.setId(storedMovie.getId());
        getMovieService().save(movie);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movie
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> MoviesItemJsonController.delete(@ModelAttribute Movie movie) {
        getMovieService().delete(movie);
        return ResponseEntity.ok().build();
    }
    
}
