package cn.heweiming.webjars.learn.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;

public class ShiroDemo01 {

    @Test
    public void demo01() {
        
        Factory<SecurityManager> factory = new IniSecurityManagerFactory(
                "classpath:shiro.ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        UsernamePasswordToken token = new UsernamePasswordToken("zhang", "1234");

        try {
            currentUser.login(token);
            // if no exception, that's it, we're done!
        } catch (UnknownAccountException uae) {
            // username wasn't in the system, show them an error message?
        } catch (IncorrectCredentialsException ice) {
            // password didn't match, try again?
        } catch (LockedAccountException lae) {
            // account for that username is locked - can't login. Show them a
            // message?
            // ... more types exceptions to check if you want ...
        } catch (AuthenticationException ae) {
            // unexpected condition - error?
        }

        currentUser.logout();
    }

}
