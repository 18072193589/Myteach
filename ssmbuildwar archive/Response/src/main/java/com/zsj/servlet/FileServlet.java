package com.zsj.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

public class FileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//  1.要获取下载文件的路径
        //String realPath = this.getServletContext().getRealPath("/佐伊.jpg");
        String realPath = "D:\\Workspace\\jajiaoweb\\Response\\target\\classes\\佐伊.jpg";
        System.out.println("下载文件的路径:"+realPath);
//  2.下载的文件名是啥?
        String fileName = realPath.substring(realPath.lastIndexOf("//")+1);
        System.out.println(fileName);
//  3.设置想办法让游览器能够支持下载我们需要的东西
        resp.setHeader("Content-Disposition","attachment;filename="+ URLEncoder.encode(fileName,"UTF-8"));
//  4.获取下载文件的输入流
        FileInputStream in = new FileInputStream(realPath);
//  5.创建缓冲区域
        int len=0;
        byte[] buffer = new byte[1024];

//  6.获取outputstream对象
        ServletOutputStream out = resp.getOutputStream();
//  7.将FileOutPutStream流写入到缓冲区(Buffer)
        while((len=in.read(buffer))>0){
            out.write(buffer,0,len);
        }
        in.close();
        out.close();
//  8.使用OutPutStream将缓冲区的数据输出到客户端
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
