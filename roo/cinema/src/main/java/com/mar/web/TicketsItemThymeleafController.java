package com.mar.web;
import com.mar.entities.Ticket;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TicketsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Ticket.class, type = ControllerType.ITEM)
@RooThymeleaf
public class TicketsItemThymeleafController implements ConcurrencyManager<Ticket> {
}
