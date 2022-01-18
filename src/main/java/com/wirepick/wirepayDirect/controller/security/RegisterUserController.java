package com.wirepick.wirepayDirect.controller.security;

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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;


@Controller
public class RegisterUserController {

    private Logger logger = Logger.getLogger(RegisterUserController.class);


    /**
     * Register for new account
     * @param map
     * @param session
     * @return
     */
    @GetMapping(value = "/register")
    public ModelAndView login(ModelMap map, HttpSession session) {


        return new ModelAndView("security/registerUser");
    }

    /**
     * Register a user
     * @param request
     * @return
     */
    @PostMapping(value = {"registerUser"})
    @ResponseBody
    protected Map<String, Object> submitServiceRequest(HttpServletRequest request) {

        Map<String, Object> finalResponse = new HashMap<>();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {
            /***Get the application date and time***/
            java.sql.Date edr = new java.sql.Date(System.currentTimeMillis());
            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            String effectiveDate = df.format(edr);

            //Do the needfull here
            finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_SUCCESS);
            finalResponse.put(ResponseConstants.MESSAGE, "User created successfully with the following details: ");
            finalResponse.put("username", username);
            finalResponse.put("email", email);
            finalResponse.put("effectiveDate", effectiveDate);
            return finalResponse;
        } catch (Exception e) {
            logger.error(e.getMessage(), e.getCause());
            finalResponse.put(ResponseConstants.STATUS, ResponseConstants.STATUS_ERROR);
            finalResponse.put(ResponseConstants.MESSAGE, "Error!! Failed to authenticate user " + e.getMessage());
            return finalResponse;
        }
    }


    //End of class
}
