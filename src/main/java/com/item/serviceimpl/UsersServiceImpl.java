package com.item.serviceimpl;

import com.item.dao.UsersMapper;
import com.item.model.Commodity;
import com.item.model.Users;
import com.item.model.orders;
import com.item.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;

    @Override
    public List<Users> GetInfo() {
        return usersMapper.GetInfo();
    }

    @Override
    public int DeleteUsers(String user_name) {
        return usersMapper.DeleteUsers(user_name);
    }

    @Override
    public int InsertUser(String user_name, String user_emil, String password) {
        return usersMapper.InsertUser(user_name,user_emil,password);
    }

    @Override
    public int UpdateUser(String user_name, String user_emil, int id) {
        return usersMapper.UpdateUser(user_name,user_emil,id);
    }

    @Override
    public List<Commodity> Gtinfocommodity() {
        return usersMapper.Gtinfocommodity();
    }

    @Override
    public int Deletecommodity(String shopname) {
        return usersMapper.Deletecommodity(shopname);
    }

    @Override
    public int Insertcommodity(String shopname, String price, String number) {
        return usersMapper.Insertcommodity(shopname,price,number);
    }

    @Override
    public int Updatecommodity(String price, String number, String shopname) {
        return usersMapper.Updatecommodity(price,number,shopname);
    }

    @Override
    public List<orders> Gtinforders() {
        return usersMapper.Gtinforders();
    }

    @Override
    public int InsertOrdes(String bianhao, String user_name, String phone, String shopname, String number, String address, String total, String status, String remarks, String name) {
        return usersMapper.InsertOrdes(bianhao,user_name,phone,shopname,number,address,total,status,remarks,name);
    }

    @Override
    public int DeleteOrders(String bianhao) {
        return usersMapper.DeleteOrders(bianhao);
    }

    @Override
    public int Updateorders(String status, String phone, String address, String name, String shopname) {
        return usersMapper.Updateorders(status,phone,address,name,shopname);
    }


}
