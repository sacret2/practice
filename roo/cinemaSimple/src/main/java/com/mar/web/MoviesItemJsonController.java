package com.mar.web;
import com.mar.entities.Movie;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = MoviesItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Movie.class, type = ControllerType.ITEM)
@RooJSON
public class MoviesItemJsonController {
}
