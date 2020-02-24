// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.entities.ScreeningRoom;
import com.mar.service.api.ScreeningRoomService;
import com.mar.web.ScreeningRoomsCollectionJsonController;
import com.mar.web.ScreeningRoomsItemJsonController;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ScreeningRoomsCollectionJsonController_Roo_JSON {
    
    declare @type: ScreeningRoomsCollectionJsonController: @RestController;
    
    declare @type: ScreeningRoomsCollectionJsonController: @RequestMapping(value = "/api/screeningrooms", name = "ScreeningRoomsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ScreeningRoomService ScreeningRoomsCollectionJsonController.screeningRoomService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param screeningRoomService
     */
    @Autowired
    public ScreeningRoomsCollectionJsonController.new(ScreeningRoomService screeningRoomService) {
        this.screeningRoomService = screeningRoomService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ScreeningRoomService
     */
    public ScreeningRoomService ScreeningRoomsCollectionJsonController.getScreeningRoomService() {
        return screeningRoomService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param screeningRoomService
     */
    public void ScreeningRoomsCollectionJsonController.setScreeningRoomService(ScreeningRoomService screeningRoomService) {
        this.screeningRoomService = screeningRoomService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<ScreeningRoom>> ScreeningRoomsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<ScreeningRoom> screeningRooms = getScreeningRoomService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(screeningRooms);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents ScreeningRoomsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ScreeningRoomsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param screeningRoom
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> ScreeningRoomsCollectionJsonController.create(@Valid @RequestBody ScreeningRoom screeningRoom, BindingResult result) {
        
        if (screeningRoom.getId() != null || screeningRoom.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        ScreeningRoom newScreeningRoom = getScreeningRoomService().save(screeningRoom);
        UriComponents showURI = ScreeningRoomsItemJsonController.showURI(newScreeningRoom);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param screeningRooms
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> ScreeningRoomsCollectionJsonController.createBatch(@Valid @RequestBody Collection<ScreeningRoom> screeningRooms, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getScreeningRoomService().save(screeningRooms);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param screeningRooms
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> ScreeningRoomsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<ScreeningRoom> screeningRooms, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getScreeningRoomService().save(screeningRooms);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> ScreeningRoomsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getScreeningRoomService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}