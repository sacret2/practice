package com.mar.web;
import com.mar.entities.Ticket;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = TicketsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Ticket.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class TicketsCollectionJsonController {
}
