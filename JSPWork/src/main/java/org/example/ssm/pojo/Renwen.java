package org.example.ssm.pojo;

import java.util.Arrays;

public class Renwen {
    private String Rname;
    private String Raddress;
    private String Rintro;
    private String Rhistory;
    private String Rphoto;

    public Renwen() {
    }

    public String getRname() {
        return Rname;
    }

    public void setRname(String rname) {
        Rname = rname;
    }

    public String getRaddress() {
        return Raddress;
    }

    public void setRaddress(String raddress) {
        Raddress = raddress;
    }

    public String getRintro() {
        return Rintro;
    }

    public void setRintro(String rintro) {
        Rintro = rintro;
    }

    public String getRhistory() {
        return Rhistory;
    }

    public void setRhistory(String rhistory) {
        Rhistory = rhistory;
    }

    public String getRphoto() {
        return Rphoto;
    }

    public void setRphoto(String rphoto) {
        Rphoto = rphoto;
    }

    @Override
    public String toString() {
        return "Renwen{" +
                "Rname='" + Rname + '\'' +
                ", Raddress='" + Raddress + '\'' +
                ", Rintro='" + Rintro + '\'' +
                ", Rhistory='" + Rhistory + '\'' +
                ", Rphoto='" + Rphoto + '\'' +
                '}';
    }
}
