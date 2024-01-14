import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;

public class ShiroRun {
    public static void main(String[] args) {
        IniSecurityManagerFactory factory = new IniSecurityManagerFactory("classpath:shiro.ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        AuthenticationToken token = new UsernamePasswordToken("zhangsan","z3");
        try {
            subject.login(token);
            System.out.println("登录成功");
            boolean role1 = subject.hasRole("role1");
            System.out.println("是否拥有role1角色：" + role1);
            boolean permitted = subject.isPermitted("user:select");
            System.out.println("是否有相关权限" + permitted);
        }
        catch (UnknownAccountException e) {
            e.printStackTrace();
            System.out.println("用户不存在");
        }
        catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            System.out.println("密码错误");
        }
        catch (AuthenticationException ae) {
            //unexpected condition? error?
        }
    }
}
