package com.mar.web;
import com.mar.entities.Client;
import com.mar.service.api.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ClientDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Client.class)
public class ClientDeserializer extends JsonObjectDeserializer<Client> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ClientService clientService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param clientService
     * @param conversionService
     */
    @Autowired
    public ClientDeserializer(@Lazy ClientService clientService, ConversionService conversionService) {
        this.clientService = clientService;
        this.conversionService = conversionService;
    }
}
