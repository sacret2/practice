package com.mar.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.mar.entities.Ticket;

/**
 * = TicketRepositoryImpl
 *
 * Implementation of TicketRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = TicketRepositoryCustom.class)
public class TicketRepositoryImpl extends QueryDslRepositorySupportExt<Ticket> implements TicketRepositoryCustom{

    /**
     * Default constructor
     */
    TicketRepositoryImpl() {
        super(Ticket.class);
    }
}