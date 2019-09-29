package com.qsxh.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.qsxh.entity.PersonalData;
import com.qsxh.service.IPersonalService;
import com.qsxh.utiles.AgeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;


@Controller
@RequestMapping("/personalManager")
public class PersonalAction extends ActionSupport {

    @Resource
    private IPersonalService iPersonalService;
    ModelAndView mv = new ModelAndView();

    /*
    完善注册信息
    **/
    @RequestMapping("/improving")
    public ModelAndView improveRegData(HttpServletRequest request, MultipartFile upload, PersonalData personalData) throws Exception{
        //拼接地址
        if("选择省份".equals(personalData.getS_province())&&"地级市".equals(personalData.getS_city())){
            personalData.setUaddress("未选择");
            personalData.setS_province("未选择");
            personalData.setS_city("未选择");
        }
        if (!"选择省份".equals(personalData.getS_province())&&"地级市".equals(personalData.getS_city())){
            personalData.setUaddress(personalData.getS_province());
            personalData.setS_city("未选择");
        }
        if (!"选择省份".equals(personalData.getS_province())&&!"地级市".equals(personalData.getS_city())){
            personalData.setUaddress(personalData.getS_province()+personalData.getS_city());
        }
        //判断体重数据
        if (null==personalData.getUweight()||"".equals(personalData.getUweight())){
            personalData.setUweight("未填写");
        }
        //转换日期，得到年龄
        Integer uage = AgeUtils.getAge(AgeUtils.parse(personalData.getUbirthday()));
        personalData.setUage(uage);
        //头像上传位置
        String path = request.getSession().getServletContext().getRealPath("/uploads/");
        //判断该路径是否存在
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs(); //创建该文件夹
        }
        //获取上传文件名称
        String filename = upload.getOriginalFilename();
        //把文件名称设置为唯一值
        String uuid =  UUID.randomUUID().toString().replace("-","");
        filename = uuid+"_"+filename;
        String filepath=path+filename; //头像保存全路径
        upload.transferTo(new File(path,filename));
        personalData.setImgurl(filepath);
        personalData.setUserid("1002");
        Integer num = iPersonalService.improvingRegData(personalData);
        String msg = null;
        if (num==2){
            msg ="cregsuccess";
            System.out.println("完善资料成功");
        }else{
            msg ="cregdata";
            System.out.println("完善资料失败");
        }

        mv.setViewName(msg);
        return mv;
    }



}
