package com.zsj.servlet;

import javax.imageio.ImageIO;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class ImageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //让游览器五秒自动刷新一次
        resp.setHeader("refresh","5");
        //在内存中创建一个图片
        BufferedImage Image = new BufferedImage(80,20,BufferedImage.TYPE_INT_RGB);
        //得到图片
        Graphics2D g = (Graphics2D)Image.getGraphics();//笔
        //设置图片的背景颜色
        g.setColor(Color.WHITE);
        g.fillRect(0,0,80,20);
        //给图片写数据
        g.setColor(Color.cyan);
        g.setFont(new Font(null,Font.BOLD,20));
        g.drawString(makeName(),20,20);
        //告诉游览器这个请求用图片的方式打开
        resp.setContentType("image/jpg");
        //网站存在缓存,不让游览器缓存
        resp.setDateHeader("expires",-1);
        resp.setHeader("Cache-Control","no-cache");
        resp.setHeader("Pragma","no-cache");
        //把图片写给游览器
        ImageIO.write(Image,"jpg",resp.getOutputStream());
    }
    //生成随机数
    private String makeName(){
        Random random = new Random();
        String num = random.nextInt(9999)+"";
        StringBuffer stringBuffer = new StringBuffer();
        for(int i=0;i<4-num.length();i++)
        {
            stringBuffer.append("0");
        }
        String s = stringBuffer.toString()+num;
        return s;
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
