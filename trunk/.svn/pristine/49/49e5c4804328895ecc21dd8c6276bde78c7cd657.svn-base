package com.nuc.controller;

import com.nuc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-31 08:12
 */
@Controller
@RequestMapping("/base")
public class
BaseController {
    @Resource
    ServletContext application;

    @Resource
    private UserService userService;


    // 方法参数folder通过@PathVariable指定其值可以从@RequestMapping的{folder}获取，同理file也一样
    @RequestMapping("/goURL/{folder}/{file}")
    public String goURL(@PathVariable String folder, @PathVariable String file, HttpSession session) {
        int onLineNumber=0;
        onLineNumber= userService.onLineNumber();
        session.setAttribute("onLineNumber",onLineNumber);
        return "forward:/WEB-INF/" + folder + "/" + file + ".jsp";
    }


}
