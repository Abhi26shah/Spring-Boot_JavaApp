package com.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Indexcontroller{

//    private static final String PATH = "/error";

    @GetMapping(value="/")
//    @ResponseBody
    public String homepage() {
        return "employeeView";
    }
    
    @GetMapping(value="/error")
    public String Error() {
        return "Error";
    }

//    @Override
//    public String getErrorPath() {
//        return "No View Found";
//    }
}