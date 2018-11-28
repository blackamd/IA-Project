package db;



import java.sql.*;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
public class connect {
    
    private Connection con;
    private Statement st;
    private ResultSet rs;
    
    public connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/house_site","root","");
            st = con.createStatement();
            
        } catch (Exception e) {
            System.out.println("dbconnect .<init>()" + e);
        }
    }
    
    /*Done Successfully */public String sign_up(String name ,String phone ,String address,String email ,String password){
        String quary = "INSERT INTO user (Name,Phone,Address,Email,Password) VALUES('"+name+"','"+ phone+"','"+address+"','"+email+"','"+password+"');";  
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);
            
        }
        
        String retrive_id = "SELECT Id FROM user WHERE Email ='"+email+"';";
        String user_id = new String();
        try {
            rs = st.executeQuery(retrive_id);
            if(rs.next()){
            user_id = rs.getString("Id");
        }
        } catch (Exception e) {
            System.out.println("Exception = " + e);
        }
        return user_id;
        
    }
    /*Done Successfully */public String log_in(String email) throws SQLException{
        
       String quary = "SELECT Password FROM user WHERE Email ='"+ email+"';";               
       String user_pass = new String();
        
       rs = st.executeQuery(quary);
        if(rs.next()){
            user_pass = rs.getString("Password");
        }              
      
      
      
      return user_pass;
    } 
   /*Done Successfully */ public String[] log_in_with_admin(String email) throws SQLException{
        
       String quary = "SELECT Password, is_admin FROM user WHERE Email ='"+ email+"';";               
       String[] admin = new String[2];
       int ch=0;
        
       rs = st.executeQuery(quary);
        if(rs.next()){
            admin[0] = rs.getString("Password");
            ch = rs.getInt("is_admin");
            admin[1] =Integer.toString(ch);
        }              
      
      
      
      return admin;
    }
   /*Done Successfully */ public String[] get_user_data(String email) throws SQLException{
        
       String quary = "SELECT Id, Name, Phone, Address, Password FROM user WHERE Email ='"+ email+"';";               
           String[] user_data = new String[4];
        
       rs = st.executeQuery(quary);
        if(rs.next()){
            user_data[0] = rs.getString("Id");
            user_data[1] = rs.getString("Name");
            user_data[2] = rs.getString("Phone");
            user_data[3] = rs.getString("Address");
        }              
      
      
      
      return user_data;
    }
   /*Done Successfully */ public ArrayList get_user_ads(String user_id) throws SQLException,NullPointerException{
        int user_id_ = Integer.parseInt(user_id);
       String quary = "SELECT * FROM advertisement WHERE User_Id ="+ user_id_+";";               
           ArrayList single_user_ads = null;
           ArrayList all_user_ads = new ArrayList();
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            
            single_user_ads = new ArrayList();
            single_user_ads.add(rs.getString("Id"));
            single_user_ads.add(rs.getString("Date"));
            single_user_ads.add(rs.getString("Type"));
            single_user_ads.add(rs.getString("Size"));
            single_user_ads.add(rs.getString("Price"));
            single_user_ads.add(rs.getString("Location"));
            single_user_ads.add(rs.getString("Floor"));
            single_user_ads.add(rs.getString("Offer"));
            single_user_ads.add(rs.getString("Discription"));
            single_user_ads.add(rs.getString("Status"));
            single_user_ads.add(rs.getString("Suspend"));
            
            all_user_ads.add(single_user_ads);
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_user_ads;
    }
   /*Done Successfully */ public ArrayList get_ads_details(String ads_id) throws SQLException,NullPointerException{
        int ads_id_ = Integer.parseInt(ads_id);
       String quary = "SELECT Id, Date, Type, Size, Price, Location, Floor, Offer, Discription, Status, User_Id FROM advertisement WHERE Id ="+ ads_id_+";";               
           ArrayList single_user_ads = null;
           ArrayList all_user_ads = new ArrayList();
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            
            single_user_ads = new ArrayList();
            single_user_ads.add(rs.getString("Id"));
            single_user_ads.add(rs.getString("Date"));
            single_user_ads.add(rs.getString("Type"));
            single_user_ads.add(rs.getString("Size"));
            single_user_ads.add(rs.getString("Price"));
            single_user_ads.add(rs.getString("Location"));
            single_user_ads.add(rs.getString("Floor"));
            single_user_ads.add(rs.getString("Offer"));
            single_user_ads.add(rs.getString("Discription"));
            single_user_ads.add(rs.getString("Status"));
            single_user_ads.add(rs.getString("User_Id"));
            
            all_user_ads.add(single_user_ads);
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_user_ads;
    }
   /*Done Successfully */ public ArrayList get_all_ads() throws SQLException,NullPointerException{
       String quary = "SELECT * FROM advertisement ;";               
           ArrayList single_ads = null;
           ArrayList all_users_ads = new ArrayList();
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            single_ads = new ArrayList();
            String suspend = rs.getString("Suspend");
            single_ads.add(rs.getString("Id"));
            single_ads.add(rs.getString("Date"));
            single_ads.add(rs.getString("Type"));
            single_ads.add(rs.getString("Size"));
            single_ads.add(rs.getString("Price"));
            single_ads.add(rs.getString("Location"));
            single_ads.add(rs.getString("Floor"));
            single_ads.add(rs.getString("Offer"));
            single_ads.add(rs.getString("Discription"));
            single_ads.add(rs.getString("Status"));
            single_ads.add(rs.getString("Suspend"));
            
            
            all_users_ads.add(single_ads);
            
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_users_ads;
    }
   /*Done Successfully */ public void add_ads(int user_id, String type ,String size ,String price,String floor ,String location,String offer,String description,String status){
        Date date_in_system = new Date();
        String date = String.valueOf(date_in_system);
        String quary = "INSERT INTO advertisement (User_Id, Date, Type, Size, Price, Location, Floor, Offer, Discription, Status) VALUES("+user_id+",'"+date+"','"+type+"','"+size+"','"+price+"','"+floor+"','"+location+"','"+offer+"','"+description+"','"+status+"');";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);            
        }

    
        
    }
   /*Done Successfully */ public void update_ads(String ads_id, String date, String type ,String size ,String price,String floor ,String location,String offer,String description,String status){
       int ads_id_ = Integer.parseInt(ads_id);
        String quary = "UPDATE advertisement SET Date= '"+date+"', Type='"+type+"', Size='"+size+"', Price='"+price+"', Location='"+location+"', Floor='"+floor+"', Offer='"+offer+"', Discription='"+description+"', Status='"+status+"' WHERE Id ="+ads_id_+";";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);
            
        }
        
        
    }
   /*Done Successfully */ public String[] get_user_data_byID(String id) throws SQLException{
        int user_id = Integer.parseInt(id);
       String quary = "SELECT Name, Phone, Address, Email FROM user WHERE Id ="+ user_id+";";               
           String[] user_data = new String[4];
        
       rs = st.executeQuery(quary);
        if(rs.next()){
            
            user_data[0] = rs.getString("Name");
            user_data[1] = rs.getString("Phone");
            user_data[2] = rs.getString("Address");
            user_data[3] = rs.getString("Email");
        }              
      
      
      
      return user_data;
    } 
   /*Done Successfully */ public void add_admin(String user_name, String user_email){
       String num = "1";
        String quary = "UPDATE user SET is_admin= '"+num+"' WHERE Email ='"+user_email+"';";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);            
        }

    
        
    }
   /*Done Successfully */ public void close_ads(String ads_id){
       int ads_id_ = Integer.parseInt(ads_id);
        String quary = "DELETE FROM advertisement WHERE Id ="+ads_id_+";";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);            
        }

    
        
    }
   /*Done Successfully */ public void suspend_ads(String ads_id){
       int ads_id_ = Integer.parseInt(ads_id);
        String num = "1";
        String quary = "UPDATE advertisement SET Suspend= '"+num+"' WHERE Id ="+ads_id_+";";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);            
        }

    
        
    }
   /*Done Successfully */ public ArrayList show_comments(String ads_id) throws SQLException,NullPointerException{
       String quary = "SELECT * FROM comment WHERE Ads_Id ='"+ ads_id+"';";               
           ArrayList single_ads_com = null;
           ArrayList all_ads_com = new ArrayList();
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            
            single_ads_com = new ArrayList();
            single_ads_com.add(rs.getString("Id"));
            single_ads_com.add(rs.getString("User_Id"));
            single_ads_com.add(rs.getString("Text"));
            
            
            all_ads_com.add(single_ads_com);
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_ads_com;
    }
   /*Done Successfully */ public void insert_comment(String user_id , String ads_id ,String comment){
        String quary = "INSERT INTO comment (User_Id, Ads_Id, Text) VALUES('"+user_id+"','"+ ads_id+"','"+comment+"');";  
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);
            
        }
        
        
    }
   /*Done Successfully */ public ArrayList show_user(String user_id) throws SQLException,NullPointerException{
        int user_id_ = Integer.parseInt(user_id);
       String quary = "SELECT * FROM user WHERE Id ="+ user_id_+";";               
           ArrayList user = null;
           
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            
            user = new ArrayList();
            user.add(rs.getString("Id"));
            user.add(rs.getString("Name"));
            user.add(rs.getString("Phone"));
            user.add(rs.getString("Address"));
            user.add(rs.getString("Email"));
            user.add(rs.getString("Password"));
            
           
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return user;
    }
   /*Done Successfully */ public void update_user(String user_id, String name, String phone ,String address , String email, String password){
       int user_id_ = Integer.parseInt(user_id);
        String quary = "UPDATE user SET Name= '"+name+"', Phone='"+phone+"', Address='"+address+"', Email='"+email+"', Password='"+password+"' WHERE Id ="+user_id_+";";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);
            
        }
        
        
    }
   /*Done Successfully */ public ArrayList show_all_user() throws SQLException,NullPointerException{
       String quary = "SELECT * FROM user ;";               
           ArrayList user = null;
           ArrayList all_user = new ArrayList();
           
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            user = new ArrayList();
            user.add(rs.getString("Id"));
            user.add(rs.getString("Name"));
            user.add(rs.getString("Phone"));
            user.add(rs.getString("Address"));
            user.add(rs.getString("Email"));
            user.add(rs.getString("Password"));
            
           all_user.add(user);
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_user;
    }
   /*Done Successfully */ public ArrayList search_ads(String type, String rate, String size, String price, String location, String floor, String status) throws SQLException,NullPointerException{
       String quary = new String();

            quary = "SELECT * FROM advertisement WHERE Type REGEXP '"+type+"' AND Size REGEXP '"+size+"' AND Price REGEXP '"+price+"' AND Location REGEXP '"+location+"' AND Floor REGEXP '"+floor+"' AND Status REGEXP '"+status+"';";   
               
           ArrayList single_ads = null;
           ArrayList all_users_ads = new ArrayList();
        try{
       rs = st.executeQuery(quary);
        while(rs.next()){
            single_ads = new ArrayList();
            String suspend = rs.getString("Suspend");
            single_ads.add(rs.getString("Id"));
            single_ads.add(rs.getString("Date"));
            single_ads.add(rs.getString("Type"));
            single_ads.add(rs.getString("Size"));
            single_ads.add(rs.getString("Price"));
            single_ads.add(rs.getString("Location"));
            single_ads.add(rs.getString("Floor"));
            single_ads.add(rs.getString("Offer"));
            single_ads.add(rs.getString("Discription"));
            single_ads.add(rs.getString("Status"));
            single_ads.add(rs.getString("Suspend"));
            
            
            all_users_ads.add(single_ads);
            
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
      
      
      return all_users_ads;
    }
   /*Done Successfully */ public void add_alert(String user_id, String type ,String size ,String price,String floor ,String location,String offer,String status){
        String quary = "INSERT INTO alert (User_Id, Type, Size, Price, Location, Floor, Offer, Status) VALUES('"+user_id+"','"+type+"','"+size+"','"+price+"','"+location+"','"+floor+"','"+offer+"','"+status+"');";
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("SQLException = " + ex);            
        }

    
        
    }
   public ArrayList notification_founder(String user_id) throws SQLException{
       // --------------------- select all user alert -----------------------
       String quary_alert = new String(); 
        quary_alert = "SELECT * FROM alert WHERE User_Id = '"+user_id+"';";   
        ArrayList a = null;
        ArrayList all_a = new ArrayList();
        try{
            rs = st.executeQuery(quary_alert);
                while(rs.next()){
            
                    a = new ArrayList();
                    a.add(rs.getString("Type"));
                    a.add(rs.getString("Size"));
                    a.add(rs.getString("Price"));
                    a.add(rs.getString("Location"));
                    a.add(rs.getString("Floor"));
                    a.add(rs.getString("Offer"));
                    a.add(rs.getString("Status"));

                    all_a.add(a);
                }            
        }catch(NullPointerException e){
            System.out.println("e");
        }  
        // --------------------- select all ads match -----------------------
         String quary_search = new String();

            quary_search = "SELECT * FROM advertisement WHERE Type REGEXP '"+all_a.get(0)+"' AND Size REGEXP '"+all_a.get(1)+"' AND Price REGEXP '"+all_a.get(2)+"' AND Location REGEXP '"+all_a.get(3)+"' AND Floor REGEXP '"+all_a.get(4)+"' AND Offer REGEXP'"+all_a.get(5)+"' AND Status REGEXP '"+all_a.get(6)+"';";   
               
           ArrayList single = null;
           ArrayList multi = new ArrayList();
        try{
       rs = st.executeQuery(quary_search);
        while(rs.next()){
            single = new ArrayList();
            String suspend = rs.getString("Suspend");
            single.add(rs.getString("Id"));
            single.add(rs.getString("Date"));
            single.add(rs.getString("Type"));
            single.add(rs.getString("Size"));
            single.add(rs.getString("Price"));
            single.add(rs.getString("Location"));
            single.add(rs.getString("Floor"));
            single.add(rs.getString("Offer"));
            single.add(rs.getString("Discription"));
            single.add(rs.getString("Status"));
            single.add(rs.getString("Suspend"));
            
            
            multi.add(single);
            
        }
        
            
        }catch(NullPointerException e){
            System.out.println("e");
        }              
      
        
       
       return all_a;
   }
   
   public void delete(String sessionid){
        String quary = "DELETE FROM user WHERE session_ID ="+sessionid;               
       
        try {
            st.executeUpdate(quary);
        } catch (SQLException ex) {
            System.out.println("dbconnect.setdata()" + ex);
            
        }
        
    }
    
}
