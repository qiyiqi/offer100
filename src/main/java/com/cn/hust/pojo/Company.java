package com.cn.hust.pojo;

import java.util.Date;

public class Company {
    private Integer cId;

    private String cName;

    private String cPassword;

    private String cPhone;

    private String cLocation;

    private String cEmail;

    private Date cTime;

    private String cDescription;

    private String cPhoto;

    private String cType;
    
    private Integer cFlag;

    public Integer getcId() {
        return cId;
    }
    
    public Integer getcFlag() {
        return cFlag;
    }
    
    public void setcFlag(Integer cFlag) {
        this.cFlag = cFlag;
    }
    
    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcPassword() {
        return cPassword;
    }

    public void setcPassword(String cPassword) {
        this.cPassword = cPassword == null ? null : cPassword.trim();
    }

    public String getcPhone() {
        return cPhone;
    }

    public void setcPhone(String cPhone) {
        this.cPhone = cPhone == null ? null : cPhone.trim();
    }

    public String getcLocation() {
        return cLocation;
    }

    public void setcLocation(String cLocation) {
        this.cLocation = cLocation == null ? null : cLocation.trim();
    }

    public String getcEmail() {
        return cEmail;
    }

    public void setcEmail(String cEmail) {
        this.cEmail = cEmail == null ? null : cEmail.trim();
    }

    public Date getcTime() {
        return cTime;
    }

    public void setcTime(Date cTime) {
        this.cTime = cTime;
    }

    public String getcDescription() {
        return cDescription;
    }

    public void setcDescription(String cDescription) {
        this.cDescription = cDescription == null ? null : cDescription.trim();
    }

    public String getcPhoto() {
        return cPhoto;
    }

    public void setcPhoto(String cPhoto) {
        this.cPhoto = cPhoto == null ? null : cPhoto.trim();
    }

    public String getcType() {
        return cType;
    }

    public void setcType(String cType) {
        this.cType = cType == null ? null : cType.trim();
    }
}