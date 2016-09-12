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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ShiroDemo02 {
    /**
     * Logger for this class
     */
    private static final Logger logger = LoggerFactory.getLogger(ShiroDemo02.class);

    public static void main(String[] args) {
        logger.info("My First Apache Shiro Application");

        Factory<SecurityManager> factory = new IniSecurityManagerFactory(
                "classpath:shiro.ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);

        // get the curretnly executing user;
        Subject currentUser = SecurityUtils.getSubject();

        // Do some stuff with a Session (no need for a web or EJB container !!!)
        Session session = currentUser.getSession();
        session.setAttribute("someKey", "aValue");
        String value = (String) session.getAttribute("someKey");
        if ("aValue".equals(value)) {
            logger.info("Retrieved the correct value! [" + value + "]");
        }

        // let's login the current user so we can check against roles and
        // permissions:
        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken("lonestarr", "vespa");
            token.setRememberMe(true);

            try {
                currentUser.login(token);
            } catch (UnknownAccountException uae) {
                logger.info("There is no user with username of " + token.getPrincipal());
            } catch (IncorrectCredentialsException ice) {
                logger.info("Password for account " + token.getPrincipal()
                        + " was incorrent!");
            } catch (LockedAccountException lae) {
                logger.info("The account for username " + token.getPrincipal()
                        + " is locked . "
                        + " Please contact your administrator to unlock it.");
            } catch (AuthenticationException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }

        // say who they are:
        // print their identifying principal (int this case, a username):
        logger.info("User [" + currentUser.getPrincipal() + "]");

        // test a role:
        if (currentUser.hasRole("schwartz")) {
            logger.info("May the Schwartz be with you!");
        } else {
            logger.info("Hello, mere mortal.");
        }

        // test a typed permissions (not isstance-level)
        if (currentUser.isPermitted("lightsaber:weild")) {
            logger.info("You may use a lightsaber ring. Use is wisely.");
        } else {
            logger.info("Sorry, lightsaber rings are for schwartz masters only.");
        }

        // a (very powerful) Instance Level permission:
        if (currentUser.isPermitted("winnebago:drive:eagle5")) {
            logger.info(
                    "You are permitted to 'drive' the winnebago with license plate (id) 'eagle5'.  "
                            + "Here are the keys - have fun!");
        } else {
            logger.info("Sorry, you aren't allowed to drive the 'eagle5' winnebago!");
        }

        // all done - log out!
        currentUser.logout();
        System.exit(0);
    }
}
