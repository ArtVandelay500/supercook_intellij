package com.vandelay.app.common.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getSession().getAttribute("sessionId") != null) {
            // by pass
        } else {
            response.sendRedirect("/indexAdminView");
            return false;
        }

        return super.preHandle(request, response, handler);
    }
}
