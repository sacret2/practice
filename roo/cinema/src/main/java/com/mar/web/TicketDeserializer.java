package com.mar.web;
import com.mar.entities.Ticket;
import com.mar.service.api.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TicketDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Ticket.class)
public class TicketDeserializer extends JsonObjectDeserializer<Ticket> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TicketService ticketService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param ticketService
     * @param conversionService
     */
    @Autowired
    public TicketDeserializer(@Lazy TicketService ticketService, ConversionService conversionService) {
        this.ticketService = ticketService;
        this.conversionService = conversionService;
    }
}
