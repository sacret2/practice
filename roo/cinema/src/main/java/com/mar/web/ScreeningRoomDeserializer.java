package com.mar.web;
import com.mar.entities.ScreeningRoom;
import com.mar.service.api.ScreeningRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ScreeningRoomDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ScreeningRoom.class)
public class ScreeningRoomDeserializer extends JsonObjectDeserializer<ScreeningRoom> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ScreeningRoomService screeningRoomService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param screeningRoomService
     * @param conversionService
     */
    @Autowired
    public ScreeningRoomDeserializer(@Lazy ScreeningRoomService screeningRoomService, ConversionService conversionService) {
        this.screeningRoomService = screeningRoomService;
        this.conversionService = conversionService;
    }
}
