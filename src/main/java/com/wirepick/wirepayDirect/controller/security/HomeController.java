package com.wirepick.wirepayDirect.controller.security;


import com.wirepick.wirepayDirect.api.AuthenticationAPI;
import com.wirepick.wirepayDirect.dto.LoginRequestDto;
import com.wirepick.wirepayDirect.helper.enums.ApplicationCodes;
import com.wirepick.wirepayDirect.helper.enums.ResponseConstants;
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
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {

    private Logger logger = Logger.getLogger(HomeController.class);
    private final AuthenticationAPI authenticationAPI;

    public HomeController(AuthenticationAPI authenticationAPI) {
        this.authenticationAPI = authenticationAPI;
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

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        /*LoginRequestDto loginRequestDto = new LoginRequestDto();
        loginRequestDto.setUsername(username);
        loginRequestDto.setUser_password(password);
        loginRequestDto.setApp_code(ApplicationCodes.APP_CODE);*/

        /*LoginRequestDto loggedInUser = new LoginRequestDto();

        try {

            //call the api method here
            List<String> apiResults = authenticationAPI.authenticateUser(loginRequestDto);
            if (apiResults.isEmpty()) {
                finalResponse.put( ResponseConstants.STATUS, ResponseConstants.STATUS_ERROR );
                finalResponse.put( ResponseConstants.MESSAGE, "Error!! Failed to reach authentication server");
                return finalResponse;
            }
            if (apiResults.contains( ResponseConstants.STATUS_ERROR )) {
                finalResponse.put( ResponseConstants.STATUS, ResponseConstants.STATUS_ERROR );
                finalResponse.put( ResponseConstants.MESSAGE, "Error !! Failed to authenticate user " + username + " Contact system admin" );
                return finalResponse;
            }
            *//*if (apiResults.contains( ResponseConstants.HTTP_OK )) {
                int index = apiResults.indexOf( ResponseConstants.HTTP_OK );
                if (index == 0) {
                    loggedInUser = apiResults.get( 1 );
                }
                else if (index == 1) {
                    invReference = apiResults.get( 0 );
                }
                savedObject.setInvRefNumber( Long.valueOf( invReference ) );
                savedObject.setStatus( "Submitted to Investigations" );
                invFeedbackToInvestigationsRepository.save( savedObject );
            }*//*
            finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_SUCCESS);
            finalResponse.put(ResponseConstants.MESSAGE, "Login Successful for user " + username);
            finalResponse.put("username", username);
            return finalResponse;
        } catch (Exception e) {
            logger.error(e.getMessage(), e.getCause());

            finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_ERROR);
            finalResponse.put(ResponseConstants.MESSAGE, "Error!! Failed to authenticate user " + e.getMessage());
            return finalResponse;
        }*/
        finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_SUCCESS);
        finalResponse.put(ResponseConstants.MESSAGE, "Login Successful for user " + username);
        finalResponse.put("username", username);
        return finalResponse;
    }


}
