// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.mar.entities.Showing;
import com.mar.service.api.ShowingService;
import com.mar.web.ShowingsItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ShowingsItemJsonController_Roo_JSON {
    
    declare @type: ShowingsItemJsonController: @RestController;
    
    declare @type: ShowingsItemJsonController: @RequestMapping(value = "/showings/{showing}", name = "ShowingsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ShowingService ShowingsItemJsonController.showingService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param showingService
     */
    @Autowired
    public ShowingsItemJsonController.new(ShowingService showingService) {
        this.showingService = showingService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ShowingService
     */
    public ShowingService ShowingsItemJsonController.getShowingService() {
        return showingService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showingService
     */
    public void ShowingsItemJsonController.setShowingService(ShowingService showingService) {
        this.showingService = showingService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Showing
     */
    @ModelAttribute
    public Showing ShowingsItemJsonController.getShowing(@PathVariable("showing") Long id) {
        Showing showing = showingService.findOne(id);
        if (showing == null) {
            throw new NotFoundException(String.format("Showing with identifier '%s' not found",id));
        }
        return showing;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showing
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ShowingsItemJsonController.show(@ModelAttribute Showing showing) {
        return ResponseEntity.ok(showing);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showing
     * @return UriComponents
     */
    public static UriComponents ShowingsItemJsonController.showURI(Showing showing) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ShowingsItemJsonController.class).show(showing))
            .buildAndExpand(showing.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedShowing
     * @param showing
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ShowingsItemJsonController.update(@ModelAttribute Showing storedShowing, @Valid @RequestBody Showing showing, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        showing.setId(storedShowing.getId());
        getShowingService().save(showing);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param showing
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ShowingsItemJsonController.delete(@ModelAttribute Showing showing) {
        getShowingService().delete(showing);
        return ResponseEntity.ok().build();
    }
    
}
