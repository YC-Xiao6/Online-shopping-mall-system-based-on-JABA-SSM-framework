package cn.xiao.domain;

import java.util.List;

public class Detail {
    private  Integer cid;
    private  Integer sid;
    private Double lprice;
    private Double uprice;
    private Double sprice;
    private String cname;
    private String cintroduce;
    private String cdetail;
    private String ca;
    private String cb;
    private String cc;
    private String cd;
    private String ce;
    private String cf;
    private String cg;
    private String ch;
    private String ci;
    private String cj;
    private String cimage;
    private Integer id;
    private List<Img> img;
    private Seller seller;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Detail{" +
                "cid=" + cid +
                ", sid=" + sid +
                ", lprice=" + lprice +
                ", uprice=" + uprice +
                ", sprice=" + sprice +
                ", cname='" + cname + '\'' +
                ", cintroduce='" + cintroduce + '\'' +
                ", cdetail='" + cdetail + '\'' +
                ", ca='" + ca + '\'' +
                ", cb='" + cb + '\'' +
                ", cc='" + cc + '\'' +
                ", cd='" + cd + '\'' +
                ", ce='" + ce + '\'' +
                ", cf='" + cf + '\'' +
                ", cg='" + cg + '\'' +
                ", ch='" + ch + '\'' +
                ", ci='" + ci + '\'' +
                ", cj='" + cj + '\'' +
                ", cimage='" + cimage + '\'' +
                ", id=" + id +
                ", img=" + img +
                ", seller=" + seller +
                '}';
    }

    public List<Img> getImg() {
        return img;
    }

    public void setImg(List<Img> img) {
        this.img = img;
    }

    public Seller getSeller() {
        return seller;
    }

    public void setSeller(Seller seller) {
        this.seller = seller;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Double getLprice() {
        return lprice;
    }

    public void setLprice(Double lprice) {
        this.lprice = lprice;
    }

    public Double getUprice() {
        return uprice;
    }

    public void setUprice(Double uprice) {
        this.uprice = uprice;
    }

    public Double getSprice() {
        return sprice;
    }

    public void setSprice(Double sprice) {
        this.sprice = sprice;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCintroduce() {
        return cintroduce;
    }

    public void setCintroduce(String cintroduce) {
        this.cintroduce = cintroduce;
    }

    public String getCdetail() {
        return cdetail;
    }

    public void setCdetail(String cdetail) {
        this.cdetail = cdetail;
    }

    public String getCa() {
        return ca;
    }

    public void setCa(String ca) {
        this.ca = ca;
    }

    public String getCb() {
        return cb;
    }

    public void setCb(String cb) {
        this.cb = cb;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getCe() {
        return ce;
    }

    public void setCe(String ce) {
        this.ce = ce;
    }

    public String getCf() {
        return cf;
    }

    public void setCf(String cf) {
        this.cf = cf;
    }

    public String getCg() {
        return cg;
    }

    public void setCg(String cg) {
        this.cg = cg;
    }

    public String getCh() {
        return ch;
    }

    public void setCh(String ch) {
        this.ch = ch;
    }

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }

    public String getCj() {
        return cj;
    }

    public void setCj(String cj) {
        this.cj = cj;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }
}
