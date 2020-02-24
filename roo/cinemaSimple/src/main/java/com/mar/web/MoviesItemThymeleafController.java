package com.mar.web;
import com.mar.entities.Movie;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = MoviesItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Movie.class, type = ControllerType.ITEM)
@RooThymeleaf
public class MoviesItemThymeleafController implements ConcurrencyManager<Movie> {
}
