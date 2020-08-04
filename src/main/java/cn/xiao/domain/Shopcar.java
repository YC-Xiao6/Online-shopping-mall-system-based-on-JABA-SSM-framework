package cn.xiao.domain;

public class Shopcar {
    private Integer id;
    private String date;
    private Integer uid;
    private Integer cid;
    private User user;
    private Detail detail;

    @Override
    public String toString() {
        return "Shopcar{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", uid=" + uid +
                ", cid=" + cid +
                ", user=" + user +
                ", detail=" + detail +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Detail getDetail() {
        return detail;
    }

    public void setDetail(Detail detail) {
        this.detail = detail;
    }
}
