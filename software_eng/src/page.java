import java.awt.*;

import javax.swing.*;

public class page {

    public static void main(String[] arsg){
        Frame s=new Frame("主界面");
        //创建水平
        Box x=Box.createHorizontalBox();
        x.add(new Button("个人介绍"));
        x.add(Box.createHorizontalGlue());//可以延伸
        x.add(new Button("选课情况"));
        x.add(Box.createHorizontalGlue());//可以延伸
        x.add(new Button("个人成绩"));
        x.add(Box.createHorizontalGlue());//可以延伸
        x.add(new Button("获奖情况"));

        Box y=Box.createVerticalBox();
        y.add(new JTextArea("此区域为主页"));

        s.add(x,BorderLayout.NORTH);
        s.add(y);
        s.pack();
        s.setVisible(true);
    }

}

