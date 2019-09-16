package com.nuc.controller;

import com.nuc.model.Shop;
import com.nuc.model.User;
import com.nuc.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 09:07
 */
@Controller
@RequestMapping("/shop")
public class ShopController {
    @Resource
    private ShopService shopService;

    @RequestMapping("/list")
    public String listShop(HttpSession session, HttpServletRequest request){
        User user=(User) session.getAttribute("user");
       List<Shop> shops= shopService.getListByUId(user);
        BigDecimal bigDecimal=new BigDecimal("0");
        for (Shop shoping: shops) {
            BigDecimal bigDecimal1=new BigDecimal(shoping.getsNumber());
            bigDecimal= bigDecimal.add( shoping.getbPrice().multiply(bigDecimal1));
        }
        NumberFormat currency = NumberFormat.getCurrencyInstance();
       request.setAttribute("money",currency.format(bigDecimal));
       request.setAttribute("shoppinglist",shops);
        return "forward:/WEB-INF/personnoalDate/shopping.jsp";
    }

    @RequestMapping("/addShop")
    public String addShop(String bId, String number, HttpSession session) throws Exception {
        User user=(User) session.getAttribute("user");
        System.out.println(bId+"bId"+number+"number");
        Shop shop=new Shop();
        shop.setbId(Integer.parseInt(bId));
        shop.setuId(user.getuId());
        shop.setsNumber(Integer.parseInt(number));
        shopService.insert(shop);
        return "redirect:/shop/list";
    }

    @RequestMapping("/delete")
    public String delete(String sId) throws Exception {
        Shop shop=new Shop();
        shop.setsId(Integer.parseInt(sId));
        shopService.delete(shop);
        return "redirect:/shop/list";
    }
}
