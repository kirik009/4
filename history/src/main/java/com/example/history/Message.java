package com.example.history;

public class Message {
    private int userId;
    private String texxt;

    public Message(String texxt) {
        this.texxt = texxt;
    }

    public Message() {
    }

    public String getTexxt() {
        return texxt;
    }

    public void setTexxt(String texxt) {
        this.texxt = texxt;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

}
