
package db;
import java.sql.*;


public class identifyUser {
    
    public static String logIn(user u) {
        String loginStatus="";
        try{
            String passwordDB=null,loginDB=null;
            String passwordForm = u.getLogpass();
            String loginForm = u.getLogname();
            Connection con=connectionDB.getConnection(); 
            Statement statement = con.createStatement();
            
            ResultSet resultPassword = statement.executeQuery("select password from webpage.user where nickname = '"+loginForm+"'");
            while(resultPassword.next()){
                passwordDB=resultPassword.getString(1);
            }
            
            ResultSet resultLogin = statement.executeQuery("select nickname from webpage.user where nickname = '"+loginForm+"'");
            while(resultLogin.next()){
                loginDB=resultLogin.getString(1);
            }
            
            if(!passwordForm.equals(passwordDB)){
                loginStatus = "Błędne hasło!";
            }
            
            if(!loginForm.equals(loginDB)){
                loginStatus = "Błędny login!";
            }
            
            if (loginForm.contains(" ") || loginForm.contains("\t") || passwordForm.contains("\t") || passwordForm.contains(" ")){
                loginStatus="Login bądź hasło nie mogą posiadać spacji!";
            }
            
            if((passwordForm.equals(passwordDB)) && (loginForm.equals(loginDB))){
                loginStatus = "Zalogowano!";
            }
        }
        catch(Exception e) {} 
        return loginStatus;
    }
    
    
}

