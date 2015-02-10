package cn.seabornlee.java;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class AnotherTag extends SimpleTagSupport {
    private String from;

    public void setFrom(String from) {
        this.from = from;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        out.println(String.format("This is another tag in another tld(from=%s)!", this.from));
    }
}
