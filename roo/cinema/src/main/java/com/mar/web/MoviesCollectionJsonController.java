package com.mar.web;
import com.mar.entities.Movie;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = MoviesCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Movie.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class MoviesCollectionJsonController {
}
