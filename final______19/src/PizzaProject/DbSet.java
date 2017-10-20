package PizzaProject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbSet{
   public static Connection getConnect(){
   String url="jdbc:oracle:thin:@localhost:1521:XE";
   Connection conn=null;
   try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   conn=DriverManager.getConnection(url,"hr","hr");
   } catch (ClassNotFoundException e) {
      e.printStackTrace();
    
   }catch (SQLException e1) {
      e1.printStackTrace();

   }
   return conn;
   }
}