package org.example.ssm.pojo;

public class Jianli {
    private String Jname;
    private String Jaddress;
    private Integer Jage;
    private String Jphone;
    private String Jmail;
    private String Jintro;
    private String Jphoto;

    public Jianli() {
    }

    public String getJname() {
        return Jname;
    }

    public void setJname(String jname) {
        Jname = jname;
    }

    public String getJaddress() {
        return Jaddress;
    }

    public void setJaddress(String jaddress) {
        Jaddress = jaddress;
    }

    public Integer getJage() {
        return Jage;
    }

    public void setJage(Integer jage) {
        Jage = jage;
    }

    public String getJphone() {
        return Jphone;
    }

    public void setJphone(String jphone) {
        Jphone = jphone;
    }

    public String getJmail() {
        return Jmail;
    }

    public void setJmail(String jmail) {
        Jmail = jmail;
    }

    public String getJintro() {
        return Jintro;
    }

    public void setJintro(String jintro) {
        Jintro = jintro;
    }

    public String getJphoto() {
        return Jphoto;
    }

    public void setJphoto(String jphoto) {
        Jphoto = jphoto;
    }

    @Override
    public String toString() {
        return "Jianli{" +
                "Jname='" + Jname + '\'' +
                ", Jaddress='" + Jaddress + '\'' +
                ", Jage=" + Jage +
                ", Jphone='" + Jphone + '\'' +
                ", Jmail='" + Jmail + '\'' +
                ", Jintro='" + Jintro + '\'' +
                ", Jphoto='" + Jphoto + '\'' +
                '}';
    }
}
