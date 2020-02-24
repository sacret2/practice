package com.mar.repository;
import com.mar.entities.Ticket;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = TicketRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Ticket.class)
public interface TicketRepository extends DetachableJpaRepository<Ticket, Long>, TicketRepositoryCustom {
}
