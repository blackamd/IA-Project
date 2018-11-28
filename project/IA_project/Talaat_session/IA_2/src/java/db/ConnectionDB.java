package db;

import java.util.ArrayList;
import java.sql.*;
import com.mysql.jdbc.exceptions.MySQLSyntaxErrorException;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Talaat
 */
public class ConnectionDB {
    
    private Connection con;
    private Statement st;
    private ResultSet res;

//    public ConnectionDB(Connection con, Statement st, ResultSet res) {
//        this.con = con;
//        this.st = st;
//        this.res = res;
//    }

    public ConnectionDB() {
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyData","root","");
            st = con.createStatement();
        }
        catch  ( Exception e){
           System.out.println("ConnectionDB" + e); 
        }
            
            }
            
    
            public void StoreData(String SessID , String Email , String Phone) throws SQLException{
                String myquery = "INSERT INTO Users"
                        + "(SessID, Email, Phone) VALUES"
                        + " ('"+SessID+"' , '"+Email+"' , '"+Phone+"')";
                
                try {
                    st.executeUpdate(myquery);
                    System.out.println(myquery);
                } catch (SQLSyntaxErrorException ex) {
                    System.out.println("ConnectionDB.StoreData()" + ex);
                }

        
        
    }
            
                   public void DeleteData(String SessID){
                String myquery = "DELETE FROM Users WHERE SessID ='"+SessID+"'";
                
                try {
                    st.executeUpdate(myquery);
                } catch (Exception e) {
                }

    }
    

                public ArrayList<String> SelectData(String SessID) throws SQLException{
                String myquery = "SELECT Email, Phone FROM Users WHERE SessID ='"+SessID+"'";
                ArrayList <String> data = new ArrayList<String>();               
                
                    res = st.executeQuery(myquery);
                    
                    String mail = res.getString("Email");
                    String phone = res.getString("Phone");
                    
                    data.add(mail);
                    data.add(phone);
                    
                    System.err.println("3ml select");
                    
//                    res.close();
                    return data;
                    
                

        
        
                }

      
}
