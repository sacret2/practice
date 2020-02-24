// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.domain.Timer;
import com.mar.service.api.TimerService;
import com.mar.web.TimersCollectionJsonController;
import com.mar.web.TimersItemJsonController;
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

privileged aspect TimersCollectionJsonController_Roo_JSON {
    
    declare @type: TimersCollectionJsonController: @RestController;
    
    declare @type: TimersCollectionJsonController: @RequestMapping(value = "/api/timers", name = "TimersCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TimerService TimersCollectionJsonController.timerService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param timerService
     */
    @Autowired
    public TimersCollectionJsonController.new(TimerService timerService) {
        this.timerService = timerService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return TimerService
     */
    public TimerService TimersCollectionJsonController.getTimerService() {
        return timerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timerService
     */
    public void TimersCollectionJsonController.setTimerService(TimerService timerService) {
        this.timerService = timerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Timer>> TimersCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Timer> timers = getTimerService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(timers);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents TimersCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TimersCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timer
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> TimersCollectionJsonController.create(@Valid @RequestBody Timer timer, BindingResult result) {
        
        if (timer.getId() != null || timer.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Timer newTimer = getTimerService().save(timer);
        UriComponents showURI = TimersItemJsonController.showURI(newTimer);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timers
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> TimersCollectionJsonController.createBatch(@Valid @RequestBody Collection<Timer> timers, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTimerService().save(timers);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timers
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> TimersCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Timer> timers, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTimerService().save(timers);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> TimersCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getTimerService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
