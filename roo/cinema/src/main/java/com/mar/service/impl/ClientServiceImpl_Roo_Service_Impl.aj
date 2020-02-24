// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.service.impl;

import com.mar.entities.Client;
import com.mar.entities.Ticket;
import com.mar.repository.ClientRepository;
import com.mar.service.api.TicketService;
import com.mar.service.impl.ClientServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClientServiceImpl_Roo_Service_Impl {
    
    declare @type: ClientServiceImpl: @Service;
    
    declare @type: ClientServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ClientRepository ClientServiceImpl.clientRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TicketService ClientServiceImpl.ticketService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param clientRepository
     * @param ticketService
     */
    @Autowired
    public ClientServiceImpl.new(ClientRepository clientRepository, @Lazy TicketService ticketService) {
        setClientRepository(clientRepository);
        setTicketService(ticketService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClientRepository
     */
    public ClientRepository ClientServiceImpl.getClientRepository() {
        return clientRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clientRepository
     */
    public void ClientServiceImpl.setClientRepository(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TicketService
     */
    public TicketService ClientServiceImpl.getTicketService() {
        return ticketService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticketService
     */
    public void ClientServiceImpl.setTicketService(TicketService ticketService) {
        this.ticketService = ticketService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param client
     * @return Map
     */
    public Map<String, List<MessageI18n>> ClientServiceImpl.validate(Client client) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param client
     * @param ticketsToAdd
     * @return Client
     */
    @Transactional
    public Client ClientServiceImpl.addToTickets(Client client, Iterable<Long> ticketsToAdd) {
        List<Ticket> tickets = getTicketService().findAll(ticketsToAdd);
        client.addToTickets(tickets);
        return getClientRepository().save(client);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param client
     * @param ticketsToRemove
     * @return Client
     */
    @Transactional
    public Client ClientServiceImpl.removeFromTickets(Client client, Iterable<Long> ticketsToRemove) {
        List<Ticket> tickets = getTicketService().findAll(ticketsToRemove);
        client.removeFromTickets(tickets);
        return getClientRepository().save(client);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param client
     * @param tickets
     * @return Client
     */
    @Transactional
    public Client ClientServiceImpl.setTickets(Client client, Iterable<Long> tickets) {
        List<Ticket> items = getTicketService().findAll(tickets);
        List<Ticket> currents = client.getTickets();
        Set<Ticket> toRemove = new HashSet<Ticket>();
        for (Iterator<Ticket> iterator = currents.iterator(); iterator.hasNext();) {
            Ticket nextTicket = iterator.next();
            if (items.contains(nextTicket)) {
                items.remove(nextTicket);
            } else {
                toRemove.add(nextTicket);
            }
        }
        client.removeFromTickets(toRemove);
        client.addToTickets(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        client.setVersion(client.getVersion() + 1);
        return getClientRepository().save(client);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param client
     */
    @Transactional
    public void ClientServiceImpl.delete(Client client) {
        // Clear bidirectional one-to-many parent relationship with Ticket
        for (Ticket item : client.getTickets()) {
            item.setClient(null);
        }
        
        getClientRepository().delete(client);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Client> ClientServiceImpl.save(Iterable<Client> entities) {
        return getClientRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void ClientServiceImpl.delete(Iterable<Long> ids) {
        List<Client> toDelete = getClientRepository().findAll(ids);
        getClientRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Client
     */
    @Transactional
    public Client ClientServiceImpl.save(Client entity) {
        return getClientRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Client
     */
    public Client ClientServiceImpl.findOne(Long id) {
        return getClientRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Client
     */
    public Client ClientServiceImpl.findOneForUpdate(Long id) {
        return getClientRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Client> ClientServiceImpl.findAll(Iterable<Long> ids) {
        return getClientRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Client> ClientServiceImpl.findAll() {
        return getClientRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long ClientServiceImpl.count() {
        return getClientRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Client> ClientServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getClientRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Client> ClientServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getClientRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Client> ClientServiceImpl.getEntityType() {
        return Client.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> ClientServiceImpl.getIdType() {
        return Long.class;
    }
    
}