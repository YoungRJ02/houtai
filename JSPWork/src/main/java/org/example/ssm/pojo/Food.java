package org.example.ssm.pojo;

public class Food {
    private String Fname;

    public String getFname() {
        return Fname;
    }

    public void setFname(String fname) {
        Fname = fname;
    }

    private String Fcategory;
    private String Fintro;
    private String Fhistory;
    private String Fphoto;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Food() {
    }



    public String getFcategory() {
        return Fcategory;
    }

    public void setFcategory(String fcategory) {
        Fcategory = fcategory;
    }

    public String getFintro() {
        return Fintro;
    }

    public void setFintro(String fintro) {
        Fintro = fintro;
    }

    public String getFhistory() {
        return Fhistory;
    }

    public void setFhistory(String fhistory) {
        Fhistory = fhistory;
    }

    public String getFphoto() {
        return Fphoto;
    }

    public void setFphoto(String fphoto) {
        Fphoto = fphoto;
    }

    @Override
    public String toString() {
        return "Food{" +
                "Fname='" + Fname + '\'' +
                ", Fcategory='" + Fcategory + '\'' +
                ", Fintro='" + Fintro + '\'' +
                ", Fhistory='" + Fhistory + '\'' +
                ", Fphoto='" + Fphoto + '\'' +
                '}';
    }
}
