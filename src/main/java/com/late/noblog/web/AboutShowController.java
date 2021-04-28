package com.late.noblog.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Link on 21-4-27.
 */
@Controller
public class AboutShowController {

    @GetMapping("/about")
    public String about(){

        return "about";
    }

}
