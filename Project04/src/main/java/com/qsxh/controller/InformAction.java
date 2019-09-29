package com.qsxh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qsxh.entity.Dating;
import com.qsxh.entity.Inform;
import com.qsxh.entity.Message;
import com.qsxh.service.IInformBiz;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

//我的消息功能
@Controller
@RequestMapping("/informManager")
public class InformAction {
    @Resource
    private IInformBiz informBiz;//消息业务处理对象

    //系统消息
    @RequestMapping("/systemInform.action")
    public ModelAndView systemInform(@RequestParam(value = "page" , defaultValue = "1") Integer page)
    {
        PageHelper.startPage(page , 3);//(当前页，每页条数)
        List<Inform> list = informBiz.systemInform("1001");//这边的user需要从session里面取~~~~~~~~~~~~~~~~~

        ModelAndView mav = new ModelAndView();
        //使用PageInfo包装数据
        PageInfo pageInfo = new PageInfo(list , 5);
        //pageInfo存入request
        mav.addObject("pageInfo", pageInfo);
        //跳转消息页面
        mav.setViewName("clientInform_system");
        return mav;
    }
    //活动消息
    @RequestMapping("/activeInform.action")
    public ModelAndView activeInform(@RequestParam(value = "page" , defaultValue = "1") Integer page)
    {
        PageHelper.startPage(page , 3);//(当前页，每页条数)
        List<Inform> list = informBiz.activeInform("1001");//这边的user需要从session里面取~~~~~~~~~~~~~~~~~

        ModelAndView mav = new ModelAndView();
        //使用PageInfo包装数据
        PageInfo pageInfo = new PageInfo(list , 5);
        //pageInfo存入request
        mav.addObject("pageInfo", pageInfo);
        //跳转消息页面
        mav.setViewName("clientInform_active");
        return mav;
    }
    //我的留言
    @RequestMapping("/messageInform.action")
    public ModelAndView messageInform(@RequestParam(value = "page" , defaultValue = "1") Integer page)
    {
        PageHelper.startPage(page , 3);//(当前页，每页条数)
        List<Message> list = informBiz.messageInform("1001");//这边的user需要从session里面取~~~~~~~~~~~~~~~~~

        ModelAndView mav = new ModelAndView();
        //使用PageInfo包装数据
        PageInfo pageInfo = new PageInfo(list , 5);
        //pageInfo存入request
        mav.addObject("pageInfo", pageInfo);
        //跳转消息页面
        mav.setViewName("clientInform_message");
        return mav;
    }
    //我的约会
    @RequestMapping("/datingInform.action")
    public ModelAndView datingInform(@RequestParam(value = "page" , defaultValue = "1") Integer page)
    {
        PageHelper.startPage(page , 3);//(当前页，每页条数)
        List<Dating> list = informBiz.datingInform("1001");//这边的user需要从session里面取~~~~~~~~~~~~~~~~~

        ModelAndView mav = new ModelAndView();
        //使用PageInfo包装数据
        PageInfo pageInfo = new PageInfo(list , 5);
        //pageInfo存入request
        mav.addObject("pageInfo", pageInfo);
        //跳转消息页面
        mav.setViewName("clientInform_dating");
        return mav;
    }

    //系统消息 查看详情
    @RequestMapping("/sysDetails.action")
    @Transactional
    public ModelAndView sysDetails(String informid)
    {
        //查询该条记录
        Inform inform = informBiz.informDetails(informid);
        //改该条记录状态为已读
        boolean flag = informBiz.readSysOrActive(informid);
        ModelAndView mav = new ModelAndView();
        mav.addObject("inform", inform);
        mav.setViewName("clientInform_details");
        return mav;
    }

    //我的留言 查看详情
    @RequestMapping("msgDetails.action")
    public ModelAndView msgDetails(String msgid)
    {
        System.out.println("msgid:"+msgid);
        //查询该条记录
        Message message = informBiz.msgDetails(msgid);
        //改该条记录状态为已读
        boolean flag = informBiz.readMsg(msgid);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg" , message);
        mav.setViewName("clientInform_details");
        return mav;
    }

    //我的约会 查看详情
    @RequestMapping("datingDetails.action")
    public ModelAndView datingDetails(String dateid)
    {
        System.out.println("dateid:"+dateid);
        //查询该条记录
        Dating dating = informBiz.datingDetails(dateid);
//        //改该条记录状态为接受或拒绝
//        boolean flag = informBiz.acceptDating(dateid);
        ModelAndView mav = new ModelAndView();
        mav.addObject("dating" , dating);
        mav.setViewName("clientInform_details");
        return mav;
    }
}
