package com.technods.rh.entities;

/**
 * Created by TECHNO on 10/04/2016.
 */
public class Login {

    private String mailAddress;
    private String password;

    public Login(String mailAddress, String password) {
        this.mailAddress = mailAddress;
        this.password = password;
    }

    public Login() {
    }

    public String getMailAddress() {
        return mailAddress;
    }

    public void setMailAddress(String mailAddress) {
        this.mailAddress = mailAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
