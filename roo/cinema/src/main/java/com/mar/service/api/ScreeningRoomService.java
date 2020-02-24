package com.mar.service.api;
import com.mar.entities.ScreeningRoom;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ScreeningRoomService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = ScreeningRoom.class)
public interface ScreeningRoomService extends EntityResolver<ScreeningRoom, Long>, ValidatorService<ScreeningRoom> {
}
