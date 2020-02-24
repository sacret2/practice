package com.mar.web;
import com.mar.entities.Ticket;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TicketsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Ticket.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class TicketsCollectionThymeleafController {
}
