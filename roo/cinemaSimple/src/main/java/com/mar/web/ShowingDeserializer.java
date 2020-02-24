package com.mar.web;
import com.mar.entities.Showing;
import com.mar.service.api.ShowingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ShowingDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Showing.class)
public class ShowingDeserializer extends JsonObjectDeserializer<Showing> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ShowingService showingService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param showingService
     * @param conversionService
     */
    @Autowired
    public ShowingDeserializer(@Lazy ShowingService showingService, ConversionService conversionService) {
        this.showingService = showingService;
        this.conversionService = conversionService;
    }
}
