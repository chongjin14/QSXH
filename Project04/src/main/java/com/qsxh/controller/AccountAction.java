package com.qsxh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.opensymphony.xwork2.ActionSupport;
import com.qsxh.entity.Account;
import com.qsxh.entity.User;
import com.qsxh.service.AccountService;
import com.qsxh.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/AccountAction")
public class AccountAction extends ActionSupport {

    @Resource
    private AccountService as;

    @Resource
    private UserService us;

    @Transactional
    @RequestMapping("/rec")//增加一条充值记录,修改账户金币余额
    public String recharge(HttpServletRequest request, String money) {
        User uu = (User) request.getSession().getAttribute("user");
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String dateStringParse = sdf.format(date);

        int money2 = Integer.parseInt(money);//money是当前充入的金额。
        int goldnum;
        if (money2 < 100) {
            goldnum = money2 * 10;
        } else {
            goldnum = money2 * 10 + 100;
        }
        int ugoldbefore = Integer.parseInt(us.selectGold(uu.getUserid()));
        String ugoldnow = (ugoldbefore + goldnum) + "";
        try {
            int i = as.recharge(new Account(dateStringParse, goldnum + "", "21", money, uu.getUserid()));
            int j=as.changegold(ugoldnow,uu.getUserid());
            //int j = as.changegold("今晚测试", "999");
            if (i > 0 && j > 0) {
                request.setAttribute("flog","success");
            } else {
                request.setAttribute("flog","fail");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "forward:/AccountAction/arec.action";//action之间跳转
    }

   @RequestMapping("/arec")//获取充值记录列表
    public ModelAndView aRecords(HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") Integer page) {
        ModelAndView mv = new ModelAndView();
        User uu = (User) request.getSession().getAttribute("user");
       List<String> type=new ArrayList<>();type.add("21");
        PageHelper.startPage(page, 3);
        List<Account> orders = as.selectArecords(uu.getUserid(), type);
        //int thispage=AccountSize(request);
        PageInfo pageInfo = new PageInfo(orders, 5);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("gold", us.selectGold(uu.getUserid()));
        mv.setViewName("chongzhirecords");
        return mv;
    }


    @RequestMapping("/grec")//获取金币消费记录列表
    public ModelAndView gRecords(HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") Integer page)
    {
        ModelAndView mv = new ModelAndView();
        User uu = (User) request.getSession().getAttribute("user");
        List<String> type=new ArrayList<>();type.add("22");type.add("23");
        PageHelper.startPage(page, 3);
        List<Account> orders = as.selectArecords(uu.getUserid(), type);
        PageInfo pageInfo = new PageInfo(orders, 5);
        request.setAttribute("pageInfo", pageInfo);
        mv.setViewName("goldrecords");
        return mv;
    }
    @RequestMapping("/bevip")//成为会员页面
    public ModelAndView beVip(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        User u = (User) request.getSession().getAttribute("user");
        User uu = us.getUser(u.getUserid());
        String rolename = us.getRolename(uu.getRoleid());
        if (rolename.equals("待审核")) {
            rolename = "普通用户";
        }
        request.setAttribute("role", rolename);
        request.setAttribute("roleid", uu.getRoleid());
        mv.setViewName("beVip");
        return mv;
    }
    //将普通用户变为会员 1、改变user typeid
    // 2、增加会员日倒计时
    // 3、金币相应扣减，增加金币消费记录（未完成）
    // 4、增加VIP到期时间。
    @RequestMapping("/bevip2")
    public String beVip2(HttpServletRequest request, String vip) {
        ModelAndView mv = new ModelAndView();
        User uu = (User) request.getSession().getAttribute("user");

        Calendar cal = Calendar.getInstance();
        Date date = new Date();

        //此处判断选择的是1/6个月
       int gold=Integer.parseInt(us.selectGold(uu.getUserid())) ;
        if ("1".equals(vip)) { //选择1个月
            if (gold>=100){
                int i=us.changeRoldid(uu.getUserid(), "4");
                if (i>0){
                    gold=gold-100;
                    //消费金币，更改账户金币余额
                    as.changegold(gold+"",uu.getUserid());
                    cal.add(Calendar.DAY_OF_MONTH, 30);
                    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    //增加VIP到期时间
                    as.addVipenddate(uu.getUserid(),df.format(cal.getTime()));
                    //增加金币消费记录
                    as.recharge(new Account(df.format(date),"100","23","",uu.getUserid()));
                    request.setAttribute("flog","success");
                }else {
                    request.setAttribute("flog","error");
                }

            }else {
                request.setAttribute("flog","nomoney");
            }
        }
        if ("2".equals(vip)) { //选择6个月
            if (gold>=500){
                int j=us.changeRoldid(uu.getUserid(), "4");
                if (j>0){
                    gold=gold-500;
                    //消费金币，更改账户金币余额
                    as.changegold(gold+"",uu.getUserid());
                    cal.add(Calendar.DAY_OF_MONTH, 180);
                    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    //增加VIP到期时间
                    as.addVipenddate(uu.getUserid(),df.format(cal.getTime()));
                    //增加金币消费记录
                    as.recharge(new Account(df.format(date),"500","23","",uu.getUserid()));
                    request.setAttribute("flog","success");
                }else {
                    request.setAttribute("flog","error");
                }

            }else {
                request.setAttribute("flog","nomoney");
            }
        }

        return "forward:/AccountAction/bevip.action";//action之间跳转
    }


//    @Test
//    @Transactional
//    public void ttt()
//    {
//        AccountService as=new AccountServiceImp();
//        try {
//            as.recharge(new Account("888","8888","21","888","1001"));
//            as.changegold("5555","1001");
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("错");
//        }
//    }


}
