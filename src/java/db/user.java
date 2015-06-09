package db;

public class user {
    //reg
    public String uname,upass,urepass;  
    
    public String getUname() {  
     return uname;  
    }  
  
    public void setUname(String uname) {  
        this.uname = uname;  
    }  
  
    public String getUpass() {  
        return upass;  
    }  
  
    public void setUpass(String upass) {  
        this.upass = upass;  
    }  
  
    public String getUrepass() {  
        return urepass;  
    }  
    
    public void setUrepass(String urepass) {  
        this.urepass = urepass;  
    }
    
//log
    public String logname,logpass;
    
    public String getLogname() {  
        return logname;  
    }
    
    public void setLogname(String logname) { 
        this.logname = logname;  
    }
    
    public String getLogpass() {  
        return logpass;  
    }
    
    public void setLogpass(String logpass) {  
        this.logpass = logpass;  
    }   
}
