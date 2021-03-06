// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.repository;

import com.mar.entities.Client;
import com.mar.entities.QClient;
import com.mar.repository.ClientRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClientRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ClientRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClientRepositoryImpl.FIRST_NAME = "firstName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClientRepositoryImpl.LAST_NAME = "lastName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClientRepositoryImpl.EMAIL = "email";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Client> ClientRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QClient client = QClient.client;
        
        JPQLQuery<Client> query = from(client);
        
        Path<?>[] paths = new Path<?>[] {client.firstName,client.lastName,client.email};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(FIRST_NAME, client.firstName)
			.map(LAST_NAME, client.lastName)
			.map(EMAIL, client.email);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, client);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Client> ClientRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QClient client = QClient.client;
        
        JPQLQuery<Client> query = from(client);
        
        Path<?>[] paths = new Path<?>[] {client.firstName,client.lastName,client.email};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(client.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(FIRST_NAME, client.firstName)
			.map(LAST_NAME, client.lastName)
			.map(EMAIL, client.email);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, client);
    }
    
}
