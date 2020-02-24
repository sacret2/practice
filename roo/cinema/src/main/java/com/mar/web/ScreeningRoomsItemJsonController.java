package com.mar.web;
import com.mar.entities.ScreeningRoom;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ScreeningRoomsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ScreeningRoom.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ScreeningRoomsItemJsonController {
}
