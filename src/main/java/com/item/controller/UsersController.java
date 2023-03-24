package com.item.controller;

import com.item.model.Commodity;
import com.item.model.Users;
import com.item.model.orders;
import com.item.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@CrossOrigin
public class UsersController {
    @Autowired
    private UsersService usersService;

    @RequestMapping("/GetInfo")
    public String GetInfo(HttpServletRequest request,Model model){
        List<Users> list=usersService.GetInfo();
        model.addAttribute("list",list);
        return "/user/userset";
    }
    @RequestMapping("/DeleteUsers")
    public String DeleteUsers(HttpServletRequest request,Model model){
       String user_name= request.getParameter("user_name");
        usersService.DeleteUsers(user_name);
        return "redirect:/GetInfo";
    }
    @RequestMapping("/UpdateUser")
    public String UpdateUser(HttpServletRequest request,Model model){
        String user_name= request.getParameter("user_name");
        String user_emil= request.getParameter("user_emil");
        String id= request.getParameter("id");
        usersService.UpdateUser(user_name,user_emil,Integer.parseInt(id));
        return "redirect:/GetInfo";
    }

    @RequestMapping("/InsertUser")
    public String InsertUser(HttpServletRequest request,Model model){
        String user_name= request.getParameter("user_name");
        String user_emil= request.getParameter("user_emil");
        String password= request.getParameter("password");
        usersService.InsertUser(user_name,user_emil,password);
        return "redirect:/GetInfo";
    }

    @RequestMapping("/Gtinfocommodity")
    public String Gtinfocommodity(HttpServletRequest request,Model model){
        List<Commodity> list=  usersService.Gtinfocommodity();
        model.addAttribute("list",list);
        return "/Fatloss/footset";
    }

    @RequestMapping("/Deletecommodity")
    public String Deletecommodity(HttpServletRequest request,Model model) throws UnsupportedEncodingException {
        String shopname= new String(request.getParameter("shopname").getBytes("ISO-8859-1"),"UTF-8");
        usersService.Deletecommodity(shopname);
        return "redirect:/Gtinfocommodity";
    }
    @RequestMapping("/Insertcommodity")
    public String Insertcommodity(HttpServletRequest request,Model model){
        String price= request.getParameter("price");
        String number= request.getParameter("number");
        String shopname= request.getParameter("shopname");
        usersService.Insertcommodity(shopname,price,number);
        return "redirect:/Gtinfocommodity";
    }
    @RequestMapping("/Updatecommodity")
    public String Updatecommodity(HttpServletRequest request,Model model)  {
        String price= request.getParameter("price1");
        String number= request.getParameter("number1");
        String shopname= request.getParameter("shopname1");
        usersService.Updatecommodity(price,number,shopname);
        return "redirect:/Gtinfocommodity";
    }
    @RequestMapping("/Gtinforders")
    public String Gtinforders(HttpServletRequest request,Model model){
        List<orders> list=usersService.Gtinforders();
        model.addAttribute("list",list);
        return "/order/order";
    }
//    @RequestMapping("/InsertOrdes")
//    public String InsertOrdes(HttpServletRequest request,Model model){
//
//        return "redirect:/Gtinforders";
//    }
    @RequestMapping("/DeleteOrders")
    public String DeleteOrders(HttpServletRequest request,Model model){
        String bianhao= request.getParameter("bianhao");
        usersService.DeleteOrders(bianhao);
        return "redirect:/Gtinforders";
    }
    @RequestMapping("/Updateorders")
    public String Updateorders(HttpServletRequest request,Model model){
        String status= request.getParameter("status");
        String phone= request.getParameter("phone");
        String address= request.getParameter("address");
        String name= request.getParameter("name");
        String shopname= request.getParameter("shopname");
        usersService.Updateorders(status,phone,address,name,shopname);
        return "redirect:/Gtinforders";
    }
}