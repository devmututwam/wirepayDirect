package com.wirepick.wirepayDirect.controller.security;


import com.wirepick.wirepayDirect.api.AuthenticationAPI;
import com.wirepick.wirepayDirect.helper.enums.ResponseConstants;
import com.wirepick.wirepayDirect.service.security.LoginService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    private Logger logger = Logger.getLogger(HomeController.class);
    private final AuthenticationAPI authenticationAPI;
    private final LoginService loginService;

    public HomeController(AuthenticationAPI authenticationAPI,
                          LoginService loginService) {
        this.authenticationAPI = authenticationAPI;
        this.loginService = loginService;
    }

    /**
     * Display landing page
     * @param map
     * @param session
     * @return
     */
    @GetMapping(value = "/")
    public ModelAndView showLandingPage(ModelMap map, HttpSession session) {


        return new ModelAndView("landing");
    }

    /**
     * Render the login page
     * @param map
     * @param session
     * @return
     */
    @GetMapping(value = "/login")
    public ModelAndView login(ModelMap map, HttpSession session) {


        return new ModelAndView("login");
    }

    /**
     * Authenticate user
     * @param request
     * @return
     */
    @PostMapping(value = {"authenticateUser"})
    @ResponseBody
    protected Map<String, Object> submitServiceRequest(HttpServletRequest request) {

        Map<String, Object> finalResponse = new HashMap<>();

        try {

            finalResponse = loginService.loginMethod(request);

        } catch (Exception e) {
            logger.error(e.getMessage(), e.getCause());

            finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_ERROR);
            finalResponse.put(ResponseConstants.MESSAGE, "Error!! Failed to authenticate user " + e.getMessage());
            return finalResponse;
        }

        return finalResponse;
    }


}
