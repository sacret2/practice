// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.entities.Showing;
import com.mar.service.api.ShowingService;
import com.mar.web.ShowingsCollectionJsonController;
import com.mar.web.ShowingsItemJsonController;
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

privileged aspect ShowingsCollectionJsonController_Roo_JSON {
    
    declare @type: ShowingsCollectionJsonController: @RestController;
    
    declare @type: ShowingsCollectionJsonController: @RequestMapping(value = "/api/showings", name = "ShowingsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ShowingService ShowingsCollectionJsonController.showingService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param showingService
     */
    @Autowired
    public ShowingsCollectionJsonController.new(ShowingService showingService) {
        this.showingService = showingService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ShowingService
     */
    public ShowingService ShowingsCollectionJsonController.getShowingService() {
        return showingService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showingService
     */
    public void ShowingsCollectionJsonController.setShowingService(ShowingService showingService) {
        this.showingService = showingService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Showing>> ShowingsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Showing> showings = getShowingService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(showings);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents ShowingsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ShowingsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showing
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> ShowingsCollectionJsonController.create(@Valid @RequestBody Showing showing, BindingResult result) {
        
        if (showing.getId() != null || showing.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Showing newShowing = getShowingService().save(showing);
        UriComponents showURI = ShowingsItemJsonController.showURI(newShowing);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showings
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> ShowingsCollectionJsonController.createBatch(@Valid @RequestBody Collection<Showing> showings, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getShowingService().save(showings);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showings
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> ShowingsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Showing> showings, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getShowingService().save(showings);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> ShowingsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getShowingService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
