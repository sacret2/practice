package com.mar.web;
import com.mar.entities.Showing;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ShowingsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Showing.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ShowingsItemThymeleafController implements ConcurrencyManager<Showing> {
}
