<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>聊天窗口界面</title>
      <link rel="stylesheet" type="text/css" href="${cp}/font_Icon/iconfont.css">
      <link rel="stylesheet" type="text/css" href="${cp}/css/chat.css">
  </head>
  <body>

  <div class="chatContainer">
      <div class="chatBtn">
          <i class="iconfont icon-xiaoxi1"></i>
      </div>

      <!--总未读消息数（没有时为空“”）-->
      <div class="chat-message-num"></div>

      <!--聊天列表-->
      <div class="chatBox" ref="chatBox">
          <div class="chatBox-head">
              <div class="chatBox-head-one">
                  聊天列表
                  <div class="chat-close" style="margin: 10px 10px 0 0;font-size: 14px">关闭</div>
              </div>

              <!--聊天窗口-->
              <div class="chatBox-head-two">
                  <div class="chat-return">返回</div>
                  <div class="chat-people">
                      <div class="ChatInfoHead">
                          <img src="" alt="头像">
                      </div>
                      <div class="ChatInfoName">这是用户的名字</div>
                  </div>
                  <div class="chat-close">关闭</div>
              </div>

          </div>
          <div class="chatBox-info">

              <!--用户列表-->
              <div class="chatBox-list" ref="chatBoxlist">
                  <c:forEach items="${sessionScope.chatlist}" var="chatuser">
                      <input type="hidden" value="${chatuser.userid}">
                      <div class="chat-list-people">
                          <div><img src="${cp}/images/icon01.png" alt="头像"></div>
                          <div class="chat-name">
                              <p>${chatuser.uname}</p>
                          </div>
                          <div class="message-num"></div>
                      </div>
                  </c:forEach>
                  <div class="chat-list-people">
                      <div><img src="${cp}/images/icon01.png" alt="头像"></div>
                      <div class="chat-name">
                          <p>琴酒</p>
                      </div>
                      <div class="message-num"></div>
                  </div>
              </div>

              <!--聊天界面-->
              <div class="chatBox-kuang" ref="chatBoxkuang">
                  <div class="chatBox-content">
                      <div class="chatBox-content-demo" id="chatBox-content-demo">

                          <!--收到消息 left-->
                          <div class="clearfloat">
                              <div class="author-name">
                                  <small class="chat-date">time</small>
                              </div>
                              <div class="left">
                                  <div class="chat-avatars"><img src="${cp}/images/icon01.png" alt="头像"></div>
                                  <div class="chat-message">
                                      给你看张图
                                  </div>
                              </div>
                          </div>

                          <!--收到图片 left-->
                          <div class="clearfloat">
                              <div class="author-name">
                                  <small class="chat-date">2017-12-02 14:26:58</small>
                              </div>
                              <div class="left">
                                  <div class="chat-avatars"><img src="${cp}/images/icon01.png" alt="头像"></div>
                                  <div class="chat-message">
                                      <img src="${cp}/images/1.png" alt="">
                                  </div>
                              </div>
                          </div>

                          <!--发送消息 right-->
                          <div class="clearfloat">
                              <div class="author-name">
                                  <small class="chat-date">2017-12-02 14:26:58</small>
                              </div>
                              <div class="right">
                                  <div class="chat-message">嗯，适合做壁纸</div>
                                  <div class="chat-avatars"><img src="${cp}/images/icon02.png" alt="头像"></div>
                              </div>
                          </div>

                      </div>
                  </div>

                  <!--聊天工具栏-->
                  <div class="chatBox-send">
                      <div class="div-textarea" contenteditable="true"></div>
                      <div>
                          <button id="chat-biaoqing" class="btn-default-styles">
                              <i class="iconfont icon-biaoqing"></i>
                          </button>
                          <label id="chat-tuxiang" title="发送图片" for="inputImage" class="btn-default-styles">
                              <input type="file" onchange="selectImg(this)" accept="image/jpg,image/jpeg,image/png"
                                     name="file" id="inputImage" class="hidden">
                              <i class="iconfont icon-tuxiang"></i>
                          </label>
                          <button id="chat-fasong" class="btn-default-styles"><i class="iconfont icon-fasong"></i>
                          </button>
                      </div>
                      <div class="biaoqing-photo">
                          <ul>
                              <li><span class="emoji-picker-image" style="background-position: -9px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -40px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -71px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -102px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -133px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -164px -18px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -9px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -40px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -71px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -102px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -133px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -164px -52px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -9px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -40px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -71px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -102px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -133px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -164px -86px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -9px -120px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -40px -120px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -71px -120px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -102px -120px;"></span>
                              </li>
                              <li><span class="emoji-picker-image" style="background-position: -133px -120px;"></span>
                              </li>
                              <li><span class="emoji-picker-image" style="background-position: -164px -120px;"></span>
                              </li>
                              <li><span class="emoji-picker-image" style="background-position: -9px -154px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -40px -154px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -71px -154px;"></span></li>
                              <li><span class="emoji-picker-image" style="background-position: -102px -154px;"></span>
                              </li>
                              <li><span class="emoji-picker-image" style="background-position: -133px -154px;"></span>
                              </li>
                              <li><span class="emoji-picker-image" style="background-position: -164px -154px;"></span>
                              </li>
                          </ul>
                      </div>
                  </div>

              </div>
          </div>
      </div>
  </div>

  <script src="${cp}/js/jquery.min.js"></script>
  <script src="${cp}/js/chat.js"></script>
  <script src="${cp}/js/chatserver.js"></script>
  <script>
      $(".chatBox").toggle(10);
      getConfig('${sessionScope.tblUser.userid}','${cp}');
  </script>
  </body>
</html>