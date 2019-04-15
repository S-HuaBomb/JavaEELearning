package org.easybooks.test.model.vo;

import java.sql.Date;

public class LyTable implements java.io.Serializable{
    /**
     * 为何要在此实现 io.Serializable（可串行化） 接口？
     * 原来是在 MainServlet 中持久化 user 对象的时候可以访问这个类
     * @author Skr.B
     */

    // 属性
    private Integer id;
    private Integer userId;
    private Date date;
    private String title;
    private String content;

    // 属性 id 的 get/set 方法
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    // 属性 userId 的 get/set 方法
    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    // 属性 date 的 get/set 方法
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    // 属性 title 的 get/set 方法
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    // 属性 content 的 get/set 方法
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
}
