package com.mar.web;
import com.mar.entities.Client;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ClientsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Client.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ClientsItemThymeleafController implements ConcurrencyManager<Client> {
}
