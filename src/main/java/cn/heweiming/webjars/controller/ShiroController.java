package cn.heweiming.webjars.controller;

import java.io.Serializable;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/shiro")
public class ShiroController {

    public void test20160913212449() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            Session session = subject.getSession();
            Serializable id = session.getId();
            String host = session.getHost();
        }
    }

}
