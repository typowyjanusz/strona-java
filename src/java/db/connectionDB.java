package db;
import java.sql.*;

public class connectionDB {
    private static Connection connectionStatus=null;  
    static{  
        try{  
            Class.forName("org.postgresql.Driver");  
            connectionStatus=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres", "dupa666");  
        }
        catch(Exception e){}  
    }  
    
    public static Connection getConnection() {  
        return connectionStatus;  
    }    
}
