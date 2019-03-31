package com.accp.interceptor;

import com.accp.controller.UserController;
import com.accp.entity.ReceiveTarget;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.Map;

public class SessionListening implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        ReceiveTarget userSession = (ReceiveTarget)httpSessionEvent.getSession().getAttribute("userSession");
        if(userSession!=null){

            Map<String,String> userMap=(Map<String,String>)httpSessionEvent.getSession().getServletContext().getAttribute("userMap");
            for (String m:userMap.keySet()) {
                String v=userMap.get(m);
                if(v.equals(httpSessionEvent.getSession().getId())){
                    userMap.remove(m);
                }
            }
            httpSessionEvent.getSession().getServletContext().setAttribute("userMap",userMap);
        }
    }
}
