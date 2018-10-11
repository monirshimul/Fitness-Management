/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Round-32
 */
@Controller
public class SignUpController {
    
    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String indexPage(){
        return "signUp";
    }
    
}
