// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.repository;

import com.mar.entities.Ticket;
import com.mar.repository.ShowingRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ShowingRepository_Roo_Jpa_Repository {
    
    declare @type: ShowingRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ticket
     * @return Long
     */
    public abstract long ShowingRepository.countByTicket(Ticket ticket);
    
}
