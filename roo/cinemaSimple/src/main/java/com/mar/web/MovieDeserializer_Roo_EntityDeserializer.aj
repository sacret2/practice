// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.mar.entities.Movie;
import com.mar.service.api.MovieService;
import com.mar.web.MovieDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect MovieDeserializer_Roo_EntityDeserializer {
    
    declare @type: MovieDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MovieService
     */
    public MovieService MovieDeserializer.getMovieService() {
        return movieService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movieService
     */
    public void MovieDeserializer.setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService MovieDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void MovieDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Movie
     * @throws IOException
     */
    public Movie MovieDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Movie movie = movieService.findOne(id);
        if (movie == null) {
            throw new NotFoundException("Movie not found");
        }
        return movie;
    }
    
}
