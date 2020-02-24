// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.entities;

import com.mar.entities.Movie;
import com.mar.entities.Showing;
import java.util.Objects;

privileged aspect Movie_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Movie.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Movie
     */
    public Movie Movie.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Movie.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Movie
     */
    public Movie Movie.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets title value
     * 
     * @return String
     */
    public String Movie.getTitle() {
        return this.title;
    }
    
    /**
     * Sets title value
     * 
     * @param title
     * @return Movie
     */
    public Movie Movie.setTitle(String title) {
        this.title = title;
        return this;
    }
    
    /**
     * Gets showing value
     * 
     * @return Showing
     */
    public Showing Movie.getShowing() {
        return this.showing;
    }
    
    /**
     * Sets showing value
     * 
     * @param showing
     * @return Movie
     */
    public Movie Movie.setShowing(Showing showing) {
        this.showing = showing;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Movie.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Movie)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Movie) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Movie.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movie.toString() {
        return "Movie {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", title='" + title + '\'' + "}" + super.toString();
    }
    
}