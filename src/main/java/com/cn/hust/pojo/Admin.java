package com.cn.hust.pojo;

public class Admin {
    private Integer aId;

    private String aName;

    private String aPassword;

    private String aEmail;

    private String aPhone;

    private String aPhoto;

    private Integer aIdentify;

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword == null ? null : aPassword.trim();
    }

    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail == null ? null : aEmail.trim();
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone == null ? null : aPhone.trim();
    }

    public String getaPhoto() {
        return aPhoto;
    }

    public void setaPhoto(String aPhoto) {
        this.aPhoto = aPhoto == null ? null : aPhoto.trim();
    }

    public Integer getaIdentify() {
        return aIdentify;
    }

    public void setaIdentify(Integer aIdentify) {
        this.aIdentify = aIdentify;
    }
}