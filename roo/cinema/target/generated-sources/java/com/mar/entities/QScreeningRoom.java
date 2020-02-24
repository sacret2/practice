package com.mar.entities;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QScreeningRoom is a Querydsl query type for ScreeningRoom
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QScreeningRoom extends EntityPathBase<ScreeningRoom> {

    private static final long serialVersionUID = -392963711L;

    public static final QScreeningRoom screeningRoom = new QScreeningRoom("screeningRoom");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> nbOfPlaces = createNumber("nbOfPlaces", Integer.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QScreeningRoom(String variable) {
        super(ScreeningRoom.class, forVariable(variable));
    }

    public QScreeningRoom(Path<? extends ScreeningRoom> path) {
        super(path.getType(), path.getMetadata());
    }

    public QScreeningRoom(PathMetadata metadata) {
        super(ScreeningRoom.class, metadata);
    }

}

