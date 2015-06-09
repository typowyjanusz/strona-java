
package db;
import java.sql.*;


public class news {
        public String newsTitle,newsContent,newsID,newsOption,authorName;  
   
    public String getAuthorName() {  
        return authorName;  
    }  
  
    public void setAuthorName(String authorName) {  
        this.authorName = authorName;  
    }
    
    public String getNewsTitle() {  
        return newsTitle;  
    }  

    public void setNewsTitle(String newsTitle) {  
        this.newsTitle = newsTitle;  
    }  
  
    public String getNewsContent() {  
        return newsContent;  
    }  
  
    public void setNewsContent(String newsContent) {  
        this.newsContent = newsContent;  
    }  
    
    public String getNewsID() {  
        return newsID;  
    }  
  
    public void setNewsID(String newsID) {  
        this.newsID = newsID;  
    } 
    
    public String getNewsOption() {  
        return newsOption;  
    }  
  
    public void setNewsOption(String newsOption) {  
        this.newsOption = newsOption;  
    }
    
    
    public static String addNews(news n) {
        int addNewsStatus=0;
        String addNewsStatusMsg=null;
        try{
            Connection con=connectionDB.getConnection(); 
            PreparedStatement ps=con.prepareStatement("insert into webpage.news values (nextval('autoIncrementSequence'),?,?,?,0,current_date);");  
            ps.setString(1,n.getNewsTitle());  
            ps.setString(2,n.getNewsContent());
            ps.setString(3,n.getAuthorName());
            addNewsStatus=ps.executeUpdate();
            if(addNewsStatus==1){
                addNewsStatusMsg="Dodano news, proszę oczekiwać na akceptację administratora.";
            }
            if(addNewsStatus==0){
                addNewsStatusMsg="Błąd dodania wiadomości, proszę spróbować jeszcze raz.";
            }       
        }
        catch(Exception e) {}
        return addNewsStatusMsg;
    }

    
}
