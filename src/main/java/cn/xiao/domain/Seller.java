package cn.xiao.domain;

/**
 * 商户信息
 */

public class Seller {
    private Integer sid;
    private String consphone;
    private String sname;
    private String address;

    @Override
    public String toString() {
        return "Seller{" +
                "sid=" + sid +
                ", consphone='" + consphone + '\'' +
                ", sname='" + sname + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getConsphone() {
        return consphone;
    }

    public void setConsphone(String consphone) {
        this.consphone = consphone;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
