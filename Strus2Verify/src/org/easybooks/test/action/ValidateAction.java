package org.easybooks.test.action;

import com.opensymphony.xwork2.ActionSupport;
import org.easybooks.test.bean.User;

public class ValidateAction extends ActionSupport {
    private User stu;

    public User getStu() {
        return stu;
    }

    public void setStu(User stu) {
        this.stu = stu;
    }

    @Override
    public String execute() throws Exception {
        return "success";
    }

    /*
    @Override
    public void validate() {
        double ID = Double.parseDouble(stu.getID().trim().substring(0, 2));
        if (ID <= 15) {
            addFieldError("stu.ID", "学号前两位必须大于15");
        }
    }
    */
}
