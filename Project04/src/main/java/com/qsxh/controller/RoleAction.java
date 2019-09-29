package com.qsxh.controller;

import com.qsxh.entity.Role;
import com.qsxh.service.IRoleBiz;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/role")
public class RoleAction {
    @Resource
    private IRoleBiz iRoleBiz;
    private List<Role> roleList;
    //角色查询
    @RequestMapping(value = "/select.action")
    public @ResponseBody
    Map<String,Object> roleSelect(Role role){
        int page=role.getPage();
        int limit=role.getLimit();
        role.setPage((page - 1) * limit);
        int count=iRoleBiz.getRoleNum(role);
        roleList=iRoleBiz.findRoleList(role);
        Map<String, Object> usermap = new HashMap<String, Object>();
        usermap.put("code", 0);
        usermap.put("count", count);
        usermap.put("data", roleList);
        return usermap;
    }
}
