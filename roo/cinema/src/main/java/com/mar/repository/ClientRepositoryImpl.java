package com.mar.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.mar.entities.Client;

/**
 * = ClientRepositoryImpl
 *
 * Implementation of ClientRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ClientRepositoryCustom.class)
public class ClientRepositoryImpl extends QueryDslRepositorySupportExt<Client> implements ClientRepositoryCustom{

    /**
     * Default constructor
     */
    ClientRepositoryImpl() {
        super(Client.class);
    }
}