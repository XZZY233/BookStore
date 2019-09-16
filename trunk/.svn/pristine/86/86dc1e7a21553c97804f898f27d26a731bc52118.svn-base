package com.nuc.controller;

import com.nuc.model.Admin;
import com.nuc.model.Page;
import com.nuc.model.User;
import com.nuc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 17:44
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/tolog")
    public String toLog(){
        return "forward:/WEB-INF/userJSP/login.jsp";
    }

    @RequestMapping("/login")
  public String load(User user, HttpSession session, HttpServletRequest request) throws Exception {
       User  user1=userService.select(user);
        if (user1 != null) {
                userService.onLine(user1.getuId());
                session.setAttribute("user", user1);
                return "forward:/books/list";
            }else{
                request.setAttribute("msg", "用户名或密码错误！");
            return "forward:/WEB-INF/userJSP/login.jsp";
            }
    }

    //前往注册页面
    @RequestMapping("/toregister")
    public String toRegister(){
        return "forward:/WEB-INF/userJSP/register.jsp";
    }

    //用户注册
    @RequestMapping("/register")
    public String register(User user,HttpServletRequest request,String uPwd1) throws Exception {
        System.out.println(uPwd1);
       User user1= userService.findByUtel(user);
       if (user1!=null){
           request.setAttribute("msg","手机号已注册，请前往登录页面登录");
           return "forward:/WEB-INF/userJSP/register.jsp";
       }else {
           if (!user.getuPwd().equals(uPwd1)){
               request.setAttribute("msg","俩次密码必须相同");
               return "forward:/WEB-INF/userJSP/register.jsp";
           }else {
               userService.insert(user);
               return "forward:/WEB-INF/userJSP/login.jsp";
           }

       }

    }

        @RequestMapping("/logout")
        public String Logout(User user,HttpSession session) {
            // 从Session中移走用户对象
            userService.outLine(user.getuId());
            session.removeAttribute("user");
            session.invalidate();
            return "redirect:/user/tolog";
    }

    /*
     * 通过用户名查询用户信息
     */
    @RequestMapping("/query")
    @ResponseBody
    public Object Query(Page<User> page, User user, String keyWord,HttpServletRequest request) throws Exception{
        user.setuName(keyWord);
        page.setParamEntity(user);
        int onLineNumber=0;

        onLineNumber  =userService.onLineNumber();
        request.setAttribute("onLineNumber",onLineNumber);
        page = userService.selectPageUseDyc(page);
        return page.getPageMap();
    }

    /*
     * 删除用户
     */
    @RequestMapping("/deleteList")
    @ResponseBody
    // 如果返回json格式，需要这个注解，
    public Object Delete(String[] pks) throws Exception {

        int count = 0;
        int single = 0;
        User user=null;
        for (String uid : pks) {
            user = new User();
            user.setuId(Integer.parseInt(uid));
            single = userService.delete(user);
            if (single == 1) {
                count++;
            }
        }
        return count;
    }
        //判断用户是否存在ajax
    @RequestMapping("/validateuserisexsit")
    @ResponseBody
    public Object ValidateUTel(String uTel)
    {
        int result =0;
        User user=new User();
        user.setuTel(uTel);
        result=userService.objectNameIsExsit(user);
        return result;
    }

    /*
     * 新增并保存用户信息ajax
     */
    @RequestMapping("/insert")
    @ResponseBody
    public Object Insert(User user) throws Exception {
        int count = userService.insert(user);
        return count;
    }

    /*
     * 修改：根据电话，主键 查询用户是已否存在
     */
    @RequestMapping("/validateupdateuserisexsit")
    @ResponseBody
    public Object Validateupdateuserisexsit(String uTel,String uId)
    {
        int result =0;
        User user=new User();
        user.setuId(Integer.parseInt(uId));
        user.setuTel(uTel);
        System.out.println(user);
        result=userService.objectNameAndIdIsExsit(user);
        System.out.println(result);
        return result;
    }

    /*
     * 更新并保存
     */
    @RequestMapping("/update")
    @ResponseBody
    public Object Update(User user, HttpSession session) throws Exception {

        int count = userService.update(user);
        return count;
    }

    @RequestMapping("/changeBasic")
    public String changeBasic(User user,HttpSession session){
        System.out.println(user);
        if (user!=null){
            userService.changeBasic(user);
            session.setAttribute("user",user);
        }
        return "forward:/WEB-INF/personnoalDate/showPersonalData.jsp";
    }

    @RequestMapping("/changePwd")
    public String changePwd(User user){
        if (user!=null){
            userService.changeBasic(user);
        }
        return "redirect:/user/tolog";
    }
    @RequestMapping("/toshowPersonalData")
    public String showPersonalData(){
        return "forward:/WEB-INF/personnoalDate/showPersonalData.jsp";
    }
    @RequestMapping("toshowPersonPassWord")
    public String showPersonPassWord(){
        return "forward:/WEB-INF/personnoalDate/showPersonPassWord.jsp";
    }

}
