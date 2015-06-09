
package db;

import java.sql.*;

public class saveUser {
    public static String validation(user u){
        String errorMsg=null;
        String nick = u.getUname();
        String pass = u.getUpass();
        String repass = u.getUrepass();
        if(nick.length() < 4){
            errorMsg="Za krótki login!";
        }
        if(pass.length() < 4){
            errorMsg="Za krótkie hasło!";
        }
        if(!pass.equals(repass)){
            errorMsg="Źle przepisane hasło!";
        }
        if (nick.contains(" ") || pass.contains("\t")){
            errorMsg="Login bądź hasło nie mogą posiadać spacji!";
        }
        return errorMsg;
    }
    
    public static int register(user u) {
        int registryStatus=0;
        try{
            Connection con=connectionDB.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into webpage.user values(?,?,current_date)");  
            ps.setString(1,u.getUname());  
            ps.setString(2,u.getUpass());
            registryStatus=ps.executeUpdate();
        }
        catch(Exception e) {}      
        return registryStatus;  
    }  
}
