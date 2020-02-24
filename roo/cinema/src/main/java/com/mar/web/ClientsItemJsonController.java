package com.mar.web;
import com.mar.entities.Client;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ClientsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Client.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ClientsItemJsonController {
}
