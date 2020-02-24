package com.mar.service.api;
import com.mar.entities.Ticket;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = TicketService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Ticket.class)
public interface TicketService extends EntityResolver<Ticket, Long>, ValidatorService<Ticket> {
}
