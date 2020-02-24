package com.mar.entities;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMovie is a Querydsl query type for Movie
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMovie extends EntityPathBase<Movie> {

    private static final long serialVersionUID = -1508790592L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QMovie movie = new QMovie("movie");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final QShowing showing;

    public final StringPath title = createString("title");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QMovie(String variable) {
        this(Movie.class, forVariable(variable), INITS);
    }

    public QMovie(Path<? extends Movie> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QMovie(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QMovie(PathMetadata metadata, PathInits inits) {
        this(Movie.class, metadata, inits);
    }

    public QMovie(Class<? extends Movie> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.showing = inits.isInitialized("showing") ? new QShowing(forProperty("showing"), inits.get("showing")) : null;
    }

}

