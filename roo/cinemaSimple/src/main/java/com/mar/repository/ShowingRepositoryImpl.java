package com.mar.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.mar.entities.Showing;

/**
 * = ShowingRepositoryImpl
 *
 * Implementation of ShowingRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ShowingRepositoryCustom.class)
public class ShowingRepositoryImpl extends QueryDslRepositorySupportExt<Showing> implements ShowingRepositoryCustom{

    /**
     * Default constructor
     */
    ShowingRepositoryImpl() {
        super(Showing.class);
    }
}