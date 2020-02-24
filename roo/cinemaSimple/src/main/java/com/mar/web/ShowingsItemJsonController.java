package com.mar.web;
import com.mar.entities.Showing;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ShowingsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Showing.class, type = ControllerType.ITEM)
@RooJSON
public class ShowingsItemJsonController {
}
