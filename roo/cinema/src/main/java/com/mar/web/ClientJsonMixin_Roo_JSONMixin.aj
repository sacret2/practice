// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.mar.entities.Ticket;
import com.mar.web.ClientJsonMixin;
import java.util.List;

privileged aspect ClientJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private List<Ticket> ClientJsonMixin.tickets;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Ticket> ClientJsonMixin.getTickets() {
        return tickets;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tickets
     */
    public void ClientJsonMixin.setTickets(List<Ticket> tickets) {
        this.tickets = tickets;
    }
    
}