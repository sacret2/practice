package com.mar.web;
import com.mar.domain.Timer;
import com.mar.service.api.TimerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TimerDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Timer.class)
public class TimerDeserializer extends JsonObjectDeserializer<Timer> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TimerService timerService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param timerService
     * @param conversionService
     */
    @Autowired
    public TimerDeserializer(@Lazy TimerService timerService, ConversionService conversionService) {
        this.timerService = timerService;
        this.conversionService = conversionService;
    }
}
