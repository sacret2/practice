package com.mar.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QTimer is a Querydsl query type for Timer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QTimer extends EntityPathBase<Timer> {

    private static final long serialVersionUID = -469673768L;

    public static final QTimer timer = new QTimer("timer");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath message = createString("message");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QTimer(String variable) {
        super(Timer.class, forVariable(variable));
    }

    public QTimer(Path<? extends Timer> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTimer(PathMetadata metadata) {
        super(Timer.class, metadata);
    }

}

