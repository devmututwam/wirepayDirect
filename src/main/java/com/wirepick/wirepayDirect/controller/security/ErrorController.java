package com.wirepick.wirepayDirect.controller.security;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

//@RequestMapping("/")
public class ErrorController {

    @GetMapping(value = "error")
    public String errorHandler(Model model, HttpSession session) {
        return "error";
    }

}
