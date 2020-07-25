package com.b1n.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.webflow.context.servlet.HttpServletRequestMap;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWoridController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    @RequestMapping("/processFormVersionTwo")
    public String convetUpperCase(HttpServletRequest request, Model model){

        String name = request.getParameter("studentName");
        name = name.toUpperCase();
        String result = "Yo! " + name;
        model.addAttribute("message", result);

        return "helloworld";
    }
    @RequestMapping("/processFormVersionThree")
    public String convetUpperCasev3(
            @RequestParam("studentName") String name,
            Model model){

        name = name.toUpperCase();
        String result = "Yo! this is version 3" + name;
        model.addAttribute("message", result);

        return "helloworld";
    }

}
