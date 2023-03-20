package com.java.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeView {
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("message", "Hai");
        return "index";
    }
}
