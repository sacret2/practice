package com.mar.entities;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QShowing is a Querydsl query type for Showing
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QShowing extends EntityPathBase<Showing> {

    private static final long serialVersionUID = -1720169643L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QShowing showing = new QShowing("showing");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final QMovie movie;

    public final DateTimePath<java.util.Date> showingDate = createDateTime("showingDate", java.util.Date.class);

    public final StringPath showingTime = createString("showingTime");

    public final QTicket ticket;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QShowing(String variable) {
        this(Showing.class, forVariable(variable), INITS);
    }

    public QShowing(Path<? extends Showing> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QShowing(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QShowing(PathMetadata metadata, PathInits inits) {
        this(Showing.class, metadata, inits);
    }

    public QShowing(Class<? extends Showing> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.movie = inits.isInitialized("movie") ? new QMovie(forProperty("movie"), inits.get("movie")) : null;
        this.ticket = inits.isInitialized("ticket") ? new QTicket(forProperty("ticket"), inits.get("ticket")) : null;
    }

}

