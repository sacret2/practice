package com.mar.service.api;
import com.mar.entities.Showing;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ShowingService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Showing.class)
public interface ShowingService extends EntityResolver<Showing, Long>, ValidatorService<Showing> {
}
