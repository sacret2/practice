package com.mar.web;
import com.mar.entities.ScreeningRoom;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ScreeningRoomsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ScreeningRoom.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ScreeningRoomsItemThymeleafController implements ConcurrencyManager<ScreeningRoom> {
}
