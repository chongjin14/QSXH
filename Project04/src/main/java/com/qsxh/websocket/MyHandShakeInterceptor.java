package com.qsxh.websocket;

import com.qsxh.entity.TblUser;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import javax.servlet.http.HttpSession;
import java.util.Map;

public class MyHandShakeInterceptor implements HandshakeInterceptor {

    @Override
    public boolean beforeHandshake(ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse, WebSocketHandler webSocketHandler, Map<String, Object> map) throws Exception {

        if (serverHttpRequest instanceof ServletServerHttpRequest) {

            ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) serverHttpRequest;
            HttpSession session = servletRequest.getServletRequest().getSession(false);

            // 标记用户
            TblUser tblUser = (TblUser) session.getAttribute("tblUser");

            if(tblUser !=null){
                map.put("wsid", tblUser.getUserid());//为服务器创建WebSocketSession做准备
                System.out.println("用户id："+ tblUser.getUserid()+" 被加入");
            }else{
                System.out.println("user为空");
            }
        }

        return true;
    }

    @Override
    public void afterHandshake(ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse, WebSocketHandler webSocketHandler, Exception e) {

    }
}
