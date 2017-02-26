package com.afjcjsbx.eshop.bean;

/**
 * Created by afjcjsbx on 24/02/17.
 */
public class LoginBean {

    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean validate(){
        if(!email.isEmpty() || !password.isEmpty()){
            return true;
        }
        return false;
    }
}
