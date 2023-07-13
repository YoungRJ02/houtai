package org.example.ssm.pojo;

public class Meijing {
    private String Mname;
    private String Maddress;
    private String Mintro;
    private String Mhistory;
    private String Mphoto;

    public Meijing() {
    }

    public String getMname() {
        return Mname;
    }

    public void setMname(String mname) {
        Mname = mname;
    }

    public String getMaddress() {
        return Maddress;
    }

    public void setMaddress(String maddress) {
        Maddress = maddress;
    }

    public String getMintro() {
        return Mintro;
    }

    public void setMintro(String mintro) {
        Mintro = mintro;
    }

    public String getMhistory() {
        return Mhistory;
    }

    public void setMhistory(String mhistory) {
        Mhistory = mhistory;
    }

    public String getMphoto() {
        return Mphoto;
    }

    public void setMphoto(String mphoto) {
        Mphoto = mphoto;
    }

    @Override
    public String toString() {
        return "Meijing{" +
                "Mname='" + Mname + '\'' +
                ", Maddress='" + Maddress + '\'' +
                ", Mintro='" + Mintro + '\'' +
                ", Mhistory='" + Mhistory + '\'' +
                ", Mphoto='" + Mphoto + '\'' +
                '}';
    }
}
