package com.nuc.controller;

import com.nuc.model.*;
import com.nuc.service.OrderBookService;
import com.nuc.service.OrderService;
import com.nuc.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-03 11:13
 */
@Controller
@RequestMapping("/orderBook")
public class OrderBookController {
    @Resource
    private OrderBookService orderBookService;
    @Resource
    private OrderService orderService;
    @Resource
    private ShopService shopService;

    /*
     * 通过用户ID查询购物记录
     */
    @RequestMapping("/query")
    @ResponseBody
    public Object Query(Page<OrderBookEntity> page,  HttpSession session) throws Exception{
       User user=(User) session.getAttribute("user");
        OrderBookEntity orderBookEntity = new OrderBookEntity();
        orderBookEntity.setuId(user.getuId());
        page.setParamEntity(orderBookEntity);
        page = orderBookService.selectPageUseDyc(page);
        return page.getPageMap();
    }
    /*
     * 通过用户ID查询购物记录
     */
    @RequestMapping("/myCargo")
    @ResponseBody
    public Object myCargo(Page<OrderBookEntity> page,  HttpSession session) throws Exception{
        User user=(User) session.getAttribute("user");
        OrderBookEntity orderBookEntity = new OrderBookEntity();
        orderBookEntity.setuId(user.getuId());
        page.setParamEntity(orderBookEntity);
        page = orderBookService.selectAllUnfinishedUseDyc(page);
        return page.getPageMap();
    }

    /*
     * 通过用户ID查询订单记录
     */
    @RequestMapping("/allQuery")
    @ResponseBody
    public Object allQuery(Page<OrderBookEntity> page,  HttpSession session) throws Exception{
        User user=(User) session.getAttribute("user");
        OrderBookEntity orderBookEntity = new OrderBookEntity();
        orderBookEntity.setuId(user.getuId());
        page.setParamEntity(orderBookEntity);
        page = orderBookService.selectAllPageListUseDyc(page);
        return page.getPageMap();
    }
//删除订单及购物记录
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(String[] pks) throws Exception {
        int single = 0;
        OrderBookEntity  orderBookEntity=null;
        for (String oId : pks) {
            orderBookEntity = new OrderBookEntity();
            orderBookEntity.setoId(Integer.parseInt(oId));
            single = orderBookService.delete(orderBookEntity);
        }
        return single;
    }
    //确认收货
    @RequestMapping("/confirmReceipt")
    @ResponseBody
    public Object confirmReceipt(String[] pks) throws Exception {
        int single = 0;
        Order1  orderBookEntity=null;
        for (String oId : pks) {
            orderBookEntity = new Order1();
            orderBookEntity.setoId(Integer.parseInt(oId));
            single = orderService.update(orderBookEntity);
        }
        return single;
    }
    @RequestMapping("/add")
    @Transactional
    public String add(String money,HttpSession session) throws Exception {
        if (money!=null){
            money=money.substring(1);
        }
        Order1 order=new Order1();
        User user=(User) session.getAttribute("user");
        order.setuId(user.getuId());
        BigDecimal bigDecimal=new BigDecimal( money);
        order.setoPrice(bigDecimal);
        order.setoOver("否");
        StringBuilder sb = new StringBuilder();
        sb.append("yyyy年MM月dd日 HH:mm:ss");
        SimpleDateFormat sdf = new SimpleDateFormat(sb.toString());
        String dateString = sdf.format(new Date());
         Date date = sdf.parse(dateString);
        order.setoDate( date);
        int count=orderService.insert(order);
        List<Shop> shops= shopService.getListByUId(user);
            for (Shop shop:shops) {
                System.out.println(shop);
                OrderBookEntity orderBook =new OrderBookEntity();
                orderBook.setbId(shop.getbId());
                System.out.println(orderService.getMaxOId());
                orderBook.setoId(orderService.getMaxOId().getoId());
                orderBook.setNumber(shop.getsNumber());
                int count1=orderBookService.insert(orderBook);
                if (count != 0 && count1 != 0){
                    shopService.delete(shop);
                }else {
                    throw new RuntimeException();
                }
            }
        return "forward:/WEB-INF/personnoalDate/paySecuss.jsp";
    }

}
