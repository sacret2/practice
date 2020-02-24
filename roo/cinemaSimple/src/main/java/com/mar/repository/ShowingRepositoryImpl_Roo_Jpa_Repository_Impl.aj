// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.repository;

import com.mar.entities.QShowing;
import com.mar.entities.Showing;
import com.mar.repository.ShowingRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ShowingRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ShowingRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ShowingRepositoryImpl.SHOWING_DATE = "showingDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ShowingRepositoryImpl.MOVIE = "movie";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Showing> ShowingRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QShowing showing = QShowing.showing;
        
        JPQLQuery<Showing> query = from(showing);
        
        Path<?>[] paths = new Path<?>[] {showing.showingDate,showing.movie};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(SHOWING_DATE, showing.showingDate)
			.map(MOVIE, showing.movie);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, showing);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Showing> ShowingRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QShowing showing = QShowing.showing;
        
        JPQLQuery<Showing> query = from(showing);
        
        Path<?>[] paths = new Path<?>[] {showing.showingDate,showing.movie};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(showing.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(SHOWING_DATE, showing.showingDate)
			.map(MOVIE, showing.movie);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, showing);
    }
    
}