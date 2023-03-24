package com.item.service;

import com.item.model.Commodity;
import com.item.model.Users;
import com.item.model.orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersService {
    List<Users> GetInfo();

    int DeleteUsers(String user_name);

    int InsertUser(String user_name,
                   String user_emil,
                   String password);


    int UpdateUser(String user_name,
                   String user_emil,
                   int id);


    List<Commodity> Gtinfocommodity();

    int Deletecommodity(String shopname);

    int Insertcommodity(String shopname,
                        String price,
                        String number);

    int Updatecommodity(String price,
                        String number,
                        String shopname);


    List<orders> Gtinforders();

    int InsertOrdes(String bianhao,
                    String user_name,
                    String phone,
                    String shopname,
                    String number,
                    String address,
                    String total,
                    String status,
                    String remarks,
                    String name);

    int DeleteOrders(String bianhao);

    int Updateorders(String status,
                     String phone,
                     String address,
                    String name,
                     String shopname);

}
