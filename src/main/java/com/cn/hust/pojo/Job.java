package com.cn.hust.pojo;

import java.util.Date;

public class Job {
    private Integer jId;

    private String jName;

    private String jLocation;

    private String jDescribe;

    private Date jTime;

    private String jRequire;

    private String jSalary;

    private String jType;

    private Integer cId;

    public Integer getjId() {
        return jId;
    }

    public void setjId(Integer jId) {
        this.jId = jId;
    }

    public String getjName() {
        return jName;
    }

    public void setjName(String jName) {
        this.jName = jName == null ? null : jName.trim();
    }

    public String getjLocation() {
        return jLocation;
    }

    public void setjLocation(String jLocation) {
        this.jLocation = jLocation == null ? null : jLocation.trim();
    }

    public String getjDescribe() {
        return jDescribe;
    }

    public void setjDescribe(String jDescribe) {
        this.jDescribe = jDescribe == null ? null : jDescribe.trim();
    }

    public Date getjTime() {
        return jTime;
    }

    public void setjTime(Date jTime) {
        this.jTime = jTime;
    }

    public String getjRequire() {
        return jRequire;
    }

    public void setjRequire(String jRequire) {
        this.jRequire = jRequire == null ? null : jRequire.trim();
    }

    public String getjSalary() {
        return jSalary;
    }

    public void setjSalary(String jSalary) {
        this.jSalary = jSalary;
    }

    public String getjType() {
        return jType;
    }

    public void setjType(String jType) {
        this.jType = jType == null ? null : jType.trim();
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }
}