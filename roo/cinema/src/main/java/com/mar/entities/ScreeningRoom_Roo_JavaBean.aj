// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.entities;

import com.mar.entities.ScreeningRoom;
import java.util.Objects;

privileged aspect ScreeningRoom_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long ScreeningRoom.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return ScreeningRoom
     */
    public ScreeningRoom ScreeningRoom.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer ScreeningRoom.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return ScreeningRoom
     */
    public ScreeningRoom ScreeningRoom.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets nbOfPlaces value
     * 
     * @return Integer
     */
    public Integer ScreeningRoom.getNbOfPlaces() {
        return this.nbOfPlaces;
    }
    
    /**
     * Sets nbOfPlaces value
     * 
     * @param nbOfPlaces
     * @return ScreeningRoom
     */
    public ScreeningRoom ScreeningRoom.setNbOfPlaces(Integer nbOfPlaces) {
        this.nbOfPlaces = nbOfPlaces;
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
    public boolean ScreeningRoom.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof ScreeningRoom)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((ScreeningRoom) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int ScreeningRoom.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ScreeningRoom.toString() {
        return "ScreeningRoom {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", nbOfPlaces='" + nbOfPlaces + '\'' + "}" + super.toString();
    }
    
}
