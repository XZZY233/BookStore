package com.nuc.controller;

import com.nuc.model.Admin;
import com.nuc.model.User;
import com.nuc.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-31 10:55
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Resource
    private AdminService adminService;

    @RequestMapping("/tologin")
    public String tologin(){
        return "forward:/WEB-INF/backstage/adminLog.jsp";
    }

    @RequestMapping("/login")
    public String login(Admin admin, HttpServletRequest request, HttpSession session){
        Admin admin1=adminService.select(admin);
        if (admin1!=null){
            session.setAttribute("admin",admin1);
            return "forward:/WEB-INF/backstage/index_admin.jsp";
        }else {
            request.setAttribute("msg","用户名密码不正确!");
            return "forward:/WEB-INF/backstage/adminLog.jsp";
        }
    }

    @RequestMapping("/logout")
    public String Logout(HttpSession session) {
        // 从Session中移走管理员用户对象
        session.removeAttribute("admin");
        session.invalidate();
        return "redirect:/admin/tologin";
    }

    /*
     * 修改密码
     */
    @RequestMapping("/updatepwd")
    @ResponseBody
    public Object updatepwd(String aId,String newPassword)
    {
        Admin admin=new Admin();
        admin.setaId(Integer.parseInt(aId));
        admin.setaPwd(newPassword);


        int result=0;
        result = adminService.updatepwd(admin);
        return result;
    }


    /*
     * 验证原始密码是否正确
     */
    @RequestMapping("/validatepasswordok")
    @ResponseBody
    public Object validatepasswordok(String aId,String aPwd)
    {
        Admin admin=new Admin();
        admin.setaId(Integer.parseInt(aId));
        admin.setaPwd(aPwd);

        int result=0;
        result = adminService.validatepasswordok(admin);
        return result;
    }

}
