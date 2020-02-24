// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.entities.Ticket;
import com.mar.service.api.TicketService;
import com.mar.web.TicketsItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect TicketsItemJsonController_Roo_JSON {
    
    declare @type: TicketsItemJsonController: @RestController;
    
    declare @type: TicketsItemJsonController: @RequestMapping(value = "/api/tickets/{ticket}", name = "TicketsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TicketService TicketsItemJsonController.ticketService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ticketService
     */
    @Autowired
    public TicketsItemJsonController.new(TicketService ticketService) {
        this.ticketService = ticketService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return TicketService
     */
    public TicketService TicketsItemJsonController.getTicketService() {
        return ticketService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticketService
     */
    public void TicketsItemJsonController.setTicketService(TicketService ticketService) {
        this.ticketService = ticketService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ticket
     */
    @ModelAttribute
    public Ticket TicketsItemJsonController.getTicket(@PathVariable("ticket") Long id) {
        Ticket ticket = ticketService.findOne(id);
        if (ticket == null) {
            throw new NotFoundException(String.format("Ticket with identifier '%s' not found",id));
        }
        return ticket;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticket
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> TicketsItemJsonController.show(@ModelAttribute Ticket ticket) {
        return ResponseEntity.ok(ticket);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticket
     * @return UriComponents
     */
    public static UriComponents TicketsItemJsonController.showURI(Ticket ticket) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TicketsItemJsonController.class).show(ticket))
            .buildAndExpand(ticket.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedTicket
     * @param ticket
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> TicketsItemJsonController.update(@ModelAttribute Ticket storedTicket, @Valid @RequestBody Ticket ticket, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        ticket.setId(storedTicket.getId());
        getTicketService().save(ticket);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticket
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> TicketsItemJsonController.delete(@ModelAttribute Ticket ticket) {
        getTicketService().delete(ticket);
        return ResponseEntity.ok().build();
    }
    
}
