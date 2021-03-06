// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.service.api;

import com.mar.entities.ScreeningRoom;
import com.mar.service.api.ScreeningRoomService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ScreeningRoomService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ScreeningRoom
     */
    public abstract ScreeningRoom ScreeningRoomService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param screeningRoom
     */
    public abstract void ScreeningRoomService.delete(ScreeningRoom screeningRoom);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<ScreeningRoom> ScreeningRoomService.save(Iterable<ScreeningRoom> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ScreeningRoomService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return ScreeningRoom
     */
    public abstract ScreeningRoom ScreeningRoomService.save(ScreeningRoom entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ScreeningRoom
     */
    public abstract ScreeningRoom ScreeningRoomService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<ScreeningRoom> ScreeningRoomService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<ScreeningRoom> ScreeningRoomService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ScreeningRoomService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ScreeningRoom> ScreeningRoomService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ScreeningRoom> ScreeningRoomService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}
