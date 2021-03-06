// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.entities;

import com.mar.entities.Movie;
import com.mar.entities.Showing;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;

privileged aspect Showing_Roo_Jpa_Entity {
    
    declare @type: Showing: @Entity;
    
    declare @type: Showing: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Showing.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Showing.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movie
     */
    public void Showing.addToMovie(Movie movie) {
        if (movie == null) {
            removeFromMovie();
        } else {
            this.movie = movie;
            movie.setShowing(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    public void Showing.removeFromMovie() {
        if (this.movie != null) {
            movie.setShowing(null);
        }
        this.movie = null;
    }
    
}
