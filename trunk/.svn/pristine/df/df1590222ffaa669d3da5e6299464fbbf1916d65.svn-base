package com.nuc.controller;

import com.nuc.model.Page;
import com.nuc.model.Type;
import com.nuc.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/type")
public class TypeController {

    @Resource
    private TypeService typeService;

    //通过种类名查询种类信息
    @RequestMapping("/query")
    @ResponseBody
    public Object Query(Page<Type> page, Type type, String keyWord) throws Exception{
        type.settName(keyWord);
        page.setParamEntity(type);
        page = typeService.selectPageUseDyc(page);
        return page.getPageMap();
    }

    //删除种类
    @RequestMapping("/deleteList")
    @ResponseBody
    // 如果返回json格式，需要这个注解，
    public Object Delete(String[] pks) throws Exception {

        int count = 0;
        int single = 0;
        Type type=null;
        for (String uid : pks) {
            type = new Type();
            type.settId(Integer.parseInt(uid));
            single = typeService.delete(type);
            if (single == 1) {
                count++;
            }
        }
        return count;
    }

    //判断种类是否存在ajax
    @RequestMapping("/validatetypeisexsit")
    @ResponseBody
    public Object ValidateUTel(String tName)
    {
        int result =0;
        Type type=new Type();
        type.settName(tName);
        result=typeService.objectNameIsExsit(type);
        return result;
    }


    //新增并保存种类信息ajax
    @RequestMapping("/insert")
    @ResponseBody
    public Object Insert(Type type) throws Exception {
        int count = typeService.insert(type);
        return count;
    }


    //修改：根据种类名，主键 查询种类是已否存在
    @RequestMapping("/validateupdatetypeisexsit")
    @ResponseBody
    public Object Validateupdateuserisexsit(String tName,String tId)
    {
        System.out.println("验证进入");
        System.out.println("tName"+tName+"----tId"+tId);
        int result =0;
        Type type=new Type();
        type.settId(Integer.parseInt(tId));
        type.settName(tName);
        result=typeService.objectNameAndIdIsExsit(type);
        System.out.println("result"+result);
        return result;
    }

    //更新并保存
    @RequestMapping("/update")
    @ResponseBody
    public Object Update(Type type, HttpSession session) throws Exception {

        int count = typeService.update(type);
        return count;
    }

}
