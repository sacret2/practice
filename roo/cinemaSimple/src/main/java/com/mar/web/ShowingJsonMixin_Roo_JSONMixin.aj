// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mar.web;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator;
import com.mar.web.ShowingJsonMixin;

privileged aspect ShowingJsonMixin_Roo_JSONMixin {
    
    declare @type: ShowingJsonMixin: @JsonIdentityInfo(generator = PropertyGenerator.class, property = "id");
    
}
