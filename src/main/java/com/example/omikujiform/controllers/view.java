package com.example.omikujiform.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class view {
    @RequestMapping("/omikuji")
    public String omikuji(){
        return "form.jsp";
    }
    @RequestMapping("/show")
    public String redirectToShow(
            HttpSession session,
            @RequestParam(value="number") int number,
            @RequestParam(value="city") String city,
            @RequestParam(value="person") String person,
            @RequestParam(value="hobby") String hobby,
            @RequestParam(value="thing") String thing,
            @RequestParam(value="complement") String complement
            ){
        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("hobby", hobby);
        session.setAttribute("thing", thing);
        session.setAttribute("complement", complement);
        return "redirect:/omikuji/show";
    }
    @RequestMapping("/omikuji/show")
    public String show(){
        return "display.jsp";
    }
}
