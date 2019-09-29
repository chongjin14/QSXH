package com.qsxh.controller;

import com.google.gson.Gson;
import com.qsxh.entity.TblChatUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Component
public class MyWebSocketHandler implements WebSocketHandler{

    @Autowired
//    private youandmeService youandmeService;

    //当MyWebSocketHandler类被加载时就会创建该Map，随类而生
    public static final Map<String, WebSocketSession> userSocketSessionMap;

    static {
        userSocketSessionMap = new HashMap<String, WebSocketSession>();
    }

    //握手实现连接后
    public void afterConnectionEstablished(WebSocketSession webSocketSession) throws Exception {


        //获得当前用户id
        String userid = (String) webSocketSession.getAttributes().get("wsid");

        System.out.println("--实现握手连接--"+userid);

        if (userSocketSessionMap.get(userid) == null) {
            userSocketSessionMap.put(userid, webSocketSession);
        }
    }

    //发送信息前的处理
    public void handleMessage(WebSocketSession webSocketSession, WebSocketMessage<?> webSocketMessage) throws Exception {

        //判断信息是否为空
        if(webSocketMessage.getPayloadLength()==0) return;

        String message = webSocketMessage.getPayload().toString();
        System.out.println("收到来自客户端的信息"+message);

        //得到Socket通道中的数据并转化为Message对象
        TblChatUser cm = new Gson().fromJson(message, TblChatUser.class);

        String toid = cm.getToid();

        TextMessage tm = new TextMessage(message);

        //发送Socket信息
        sendMessageToUser(toid, tm);
    }

    public void handleTransportError(WebSocketSession webSocketSession, Throwable throwable) throws Exception {

    }

    /**
     * 在此刷新页面就相当于断开WebSocket连接,原本在静态变量userSocketSessionMap中的
     * WebSocketSession会变成关闭状态(close)，但是刷新后的第二次连接服务器创建的
     * 新WebSocketSession(open状态)又不会加入到userSocketSessionMap中,所以这样就无法发送消息
     * 因此应当在关闭连接这个切面增加去除userSocketSessionMap中当前处于close状态的WebSocketSession，
     * 让新创建的WebSocketSession(open状态)可以加入到userSocketSessionMap中
     * @param webSocketSession
     * @param closeStatus
     * @throws Exception
     */
    public void afterConnectionClosed(WebSocketSession webSocketSession, CloseStatus closeStatus) throws Exception {

        String wsid  = (String) webSocketSession.getAttributes().get("wsid");

        System.out.println("WebSocket:"+wsid+"--close connection");

        Iterator<Map.Entry<String,WebSocketSession>> iterator = userSocketSessionMap.entrySet().iterator();
        while(iterator.hasNext()){
            Map.Entry<String,WebSocketSession> entry = iterator.next();

            if(entry.getValue().getAttributes().get(wsid)==webSocketSession.getAttributes().get(wsid)){
                userSocketSessionMap.remove(webSocketSession.getAttributes().get(wsid));
                System.out.println("WebSocket in staticMap:" + webSocketSession.getAttributes().get(wsid) + "--emoved");
            }

        }
    }

    public boolean supportsPartialMessages() {
        return false;
    }

    //发送信息的实现
    public void sendMessageToUser(String toid, TextMessage message)
            throws IOException {

        System.out.println("发送消息实现给"+toid);

        WebSocketSession session = userSocketSessionMap.get(toid);

        if (session != null && session.isOpen()) {
            session.sendMessage(message);
        }
    }
}
