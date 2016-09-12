package cn.heweiming.webjars.model;

import cn.heweiming.webjars.enumeration.Gender;
import java.util.Date;

public class User {
    
    private Integer id;

    private String username;

    private String password;

    private Gender gender;

    private Date birthday;

    private Date createTime;

    private Date updateTime;

    public Date getBirthday() {
        return birthday;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Gender getGender() {
        return gender;
    }

    public Integer getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public String getUsername() {
        return username;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", username=" + username + ", password=" + password
                + ", gender=" + gender + ", birthday=" + birthday + ", createTime="
                + createTime + ", updateTime=" + updateTime + "]";
    }
    
    
}