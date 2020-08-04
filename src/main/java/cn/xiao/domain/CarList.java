package cn.xiao.domain;

public class CarList {
    private Integer lid;
    private Double llprice;
    private Double luprice;
    private Integer cid;
    private String lname;
    private String limage;

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public Double getLlprice() {
        return llprice;
    }

    public void setLlprice(Double llprice) {
        this.llprice = llprice;
    }

    public Double getLuprice() {
        return luprice;
    }

    public void setLuprice(Double luprice) {
        this.luprice = luprice;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLimage() {
        return limage;
    }

    public void setLimage(String limage) {
        this.limage = limage;
    }

    @Override
    public String toString() {
        return "List{" +
                "lid=" + lid +
                ", llprice=" + llprice +
                ", luprice=" + luprice +
                ", cid=" + cid +
                ", lname='" + lname + '\'' +
                ", limage='" + limage + '\'' +
                '}';
    }
}
