package com.vandelay.app.common.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getSession().getAttribute("sessionId") != null) {
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
            response.setHeader("Pragma","no-cache");
            response.setHeader("Expires","0");
        } else {
            response.sendRedirect("/login");
            return false;
        }

        return super.preHandle(request, response, handler);
    }
}
