import org.apache.shiro.crypto.hash.Md5Hash;

public class ShiroMD5 {
    public static void main(String[] args) {
        String password = "z3";
        Md5Hash md5Hash = new Md5Hash(password);
        System.out.println(md5Hash);
        Md5Hash md5Hash1 = new Md5Hash(password, "salt", 2); // salt为盐，2为循环次数)
        System.out.println("2此加密" + md5Hash1);
    }
}
