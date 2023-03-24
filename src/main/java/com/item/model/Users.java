package com.item.model;

public class Users {
    private int id;
    private  String user_emil ;
    private  String user_name ;
    private  String password ;
    private  String create_time ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_emil() {
        return user_emil;
    }

    public void setUser_emil(String user_emil) {
        this.user_emil = user_emil;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_user() {
        return update_user;
    }

    public void setUpdate_user(String update_user) {
        this.update_user = update_user;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public String getIs_deleted() {
        return is_deleted;
    }

    public void setIs_deleted(String is_deleted) {
        this.is_deleted = is_deleted;
    }

    private  String update_user ;
    private  String update_time ;
    private  String is_deleted ;

}
