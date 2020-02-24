package com.mar.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.mar.entities.ScreeningRoom;

/**
 * = ScreeningRoomRepositoryImpl
 *
 * Implementation of ScreeningRoomRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ScreeningRoomRepositoryCustom.class)
public class ScreeningRoomRepositoryImpl extends QueryDslRepositorySupportExt<ScreeningRoom> implements ScreeningRoomRepositoryCustom{

    /**
     * Default constructor
     */
    ScreeningRoomRepositoryImpl() {
        super(ScreeningRoom.class);
    }
}