package db;
import java.sql.*;

public class adminpanel {
    public static String newsAcceptaionDecision(news n) {
        String newsDecision=n.getNewsOption();
        String newsID=n.getNewsID();
        String newsStatus=null;
        int querrySentStatus=0;
        if(newsDecision.equals("add")){
            try{
                
                Connection con=connectionDB.getConnection();
                PreparedStatement ps=con.prepareStatement("update webpage.news set visibility=1 where id="+newsID+";");
                querrySentStatus=ps.executeUpdate();
                if(querrySentStatus==1){
                    newsStatus="Dodano news z ID: "+newsID;
                }
                else  
                {
                    newsStatus="Błąd akceptacji newsa";
                }
            }
            catch(Exception e) {}
        }  
        if(newsDecision.equals("delete")){
            try{
                Connection con=connectionDB.getConnection();
                PreparedStatement ps=con.prepareStatement("delete from webpage.news where id="+newsID+";");
                querrySentStatus=ps.executeUpdate();
                if(querrySentStatus==1){
                    newsStatus="Usunięto news z ID: "+newsID;
                }
                else  
                {
                    newsStatus="Błąd usunięcia newsa";
                }
            }
            catch(Exception e) {}
        }
    return newsStatus;
    }
    
}
