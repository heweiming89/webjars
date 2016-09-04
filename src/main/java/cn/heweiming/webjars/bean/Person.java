package cn.heweiming.webjars.bean;

import com.fasterxml.jackson.annotation.JsonValue;

import java.util.Date;

public class Person {

    private String name;
    private int age;
    private String gender;
    private int height;
    private double weight;
    private Date birthday;
    private String mobilePhone;
    private String nation;
    public int getAge() {
        return age;
    }
    public Date getBirthday() {
        return birthday;
    }
    public String getGender() {
        return gender;
    }
    public int getHeight() {
        return height;
    }
    public String getMobilePhone() {
        return mobilePhone;
    }
    public String getName() {
        return name;
    }
    public String getNation() {
        return nation;
    }
    public double getWeight() {
        return weight;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public void setHeight(int height) {
        this.height = height;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setNation(String nation) {
        this.nation = nation;
    }
    public void setWeight(double weight) {
        this.weight = weight;
    }
    
    
    
    
    
}
