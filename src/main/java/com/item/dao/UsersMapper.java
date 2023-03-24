package com.item.dao;

import com.item.model.Commodity;
import com.item.model.Users;
import com.item.model.orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersMapper {
    List<Users> GetInfo();
    int DeleteUsers(@Param("user_name") String user_name);

    int InsertUser(@Param("user_name")String user_name,
                   @Param("user_emil")String user_emil,
                   @Param("password") String password);

    int UpdateUser(@Param("user_name")String user_name,
                   @Param("user_emil")String user_emil,
                   @Param("id")int id);

    List<Commodity> Gtinfocommodity();
    int Deletecommodity(@Param("shopname")String shopname);
    int Insertcommodity(@Param("shopname")String shopname,
                        @Param("price")String price,
                        @Param("number")String number);
    int Updatecommodity(@Param("price")String price,
                        @Param("number") String number,
                        @Param("shopname")String shopname);


    List<orders> Gtinforders();

    int InsertOrdes(@Param("bianhao")String bianhao,
                    @Param("user_name") String user_name,
                    @Param("phone") String phone,
                    @Param("shopname") String shopname,
                    @Param("number") String number,
                    @Param("address") String address,
                    @Param("total") String total,
                    @Param("status") String status,
                    @Param("remarks") String remarks,
                    @Param("name") String name);

    int DeleteOrders(@Param("bianhao")String bianhao);

    int Updateorders(@Param("status")String status,
                     @Param("phone")String phone,
                     @Param("address")String address,
                     @Param("name")String name,
                     @Param("shopname")String shopname);
}
