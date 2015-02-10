package cn.seabornlee.java;

import javax.servlet.jsp.*;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class HelloWorldTag extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        out.print("<b>Hello from my custom JSP tag!</b><hr/><anotherModule:anotherTag from=\"index.jsp\"/>");
    }
}
