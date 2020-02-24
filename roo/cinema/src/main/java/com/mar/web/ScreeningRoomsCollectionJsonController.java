package com.mar.web;
import com.mar.entities.ScreeningRoom;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ScreeningRoomsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ScreeningRoom.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class ScreeningRoomsCollectionJsonController {
}
