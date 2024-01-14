package org.example.entity;

public class Student {
    private String Snum;
    private String Sname;
    private String Ssex;
    private int Sage;
    private String Sphone;
    private String Dname;


    public Student() {
    }

    public String getSnum() {
        return Snum;
    }

    public void setSnum(String snum) {
        Snum = snum;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public String getSsex() {
        return Ssex;
    }

    public void setSsex(String ssex) {
        Ssex = ssex;
    }

    public int getSage() {
        return Sage;
    }

    public void setSage(int sage) {
        Sage = sage;
    }

    public String getSphone() {
        return Sphone;
    }

    public void setSphone(String sphone) {
        Sphone = sphone;
    }

    public String getDname() {
        return Dname;
    }

    public void setDname(String dname) {
        Dname = dname;
    }

    @Override
    public String toString() {
        return "Student{" +
                "Snum='" + Snum + '\'' +
                ", Sname='" + Sname + '\'' +
                ", Ssex='" + Ssex + '\'' +
                ", Sage=" + Sage +
                ", Sphone='" + Sphone + '\'' +
                ", Dname='" + Dname + '\'' +
                '}';
    }

    public Student(String snum, String sname, String ssex, int sage, String sphone, String dname) {
        Snum = snum;
        Sname = sname;
        Ssex = ssex;
        Sage = sage;
        Sphone = sphone;
        Dname = dname;
    }
}
