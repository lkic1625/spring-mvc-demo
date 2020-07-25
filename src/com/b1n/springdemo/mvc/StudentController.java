package com.b1n.springdemo.mvc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Value("#{countryOptions}")
    private HashMap<String, String> countryOptions;

    @RequestMapping("/showForm")
    public String showForm(Model model){

        Student student = new Student();

        model.addAttribute("student", student);

        model.addAttribute("theCountryOptions", countryOptions);

        return "student-form";
    }

    @RequestMapping("/processForm")
    public String formProcess(@ModelAttribute("student") Student student){
        System.out.println("student log: " + student.getFirstName() + " " + student.getLastName());
        return "student-configuration";

    }

}
