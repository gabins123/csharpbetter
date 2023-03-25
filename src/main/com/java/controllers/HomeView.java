package com.java.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeView {
    @RequestMapping("/")
    public String index(Model model){
        return "index";
    }
    @RequestMapping("/test2")
    public String test2(Model model){
        return "test1";
    }
}
