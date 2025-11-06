/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bean;

import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class EmployeeDao {
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","");
            
            
            
        }catch(Exception e){
            System.out.println(e);
        }
        return con;
    }
    public static int addUser(Employee emp){
        int status = 0;
        
        PreparedStatement pst;
        String query ="insert into employee(name,position,department,salary)values(?,?,?,?)";
        try{
            Connection con;
            con = getConnection();
            pst = con.prepareStatement(query);
            pst.setString(1,emp.getName());
            pst.setString(2,emp.getPosition());
            pst.setString(3,emp.getDepartment());
            pst.setInt(4,emp.getSalary());
            status = pst.executeUpdate();
          }catch(Exception e){
              System.out.println(e);
        }
        return status;
    }
    public static List<Employee> viewAll(){
        List <Employee> list = new ArrayList();
        String query = "select * from employee";
        PreparedStatement pst;
        ResultSet rs;
        try{
            Connection con = getConnection();
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Employee emp1 = new Employee();
                emp1.setId(rs.getInt("id"));
                emp1.setName(rs.getString("name"));
                emp1.setPosition(rs.getString("position"));
                emp1.setDepartment(rs.getString("department"));
                emp1.setSalary(rs.getInt("salary"));
                list.add(emp1);
            }
           
            
            
        }catch(Exception e){
            System.out.println(e);
        }
        return list;
    }
    public static List<Employee> getRecordsById(Employee emp){
        List <Employee> list = new ArrayList();
        String query = "select * from employee where id = ?";
        ResultSet rs ;
        PreparedStatement pst;
        try {
            Connection con = getConnection();
            pst = con.prepareStatement(query);
            pst.setInt(1,emp.getId());
            rs = pst.executeQuery();
            while(rs.next()){
                Employee emp1 = new Employee();
                emp1.setName(rs.getString("name"));
                emp1.setPosition(rs.getString("position"));
                emp1.setDepartment(rs.getString("department"));
                emp1.setSalary(rs.getInt("salary"));
                list.add(emp1);
            }
            
            
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static int updateRecords(Employee emp) {
    int status = 0;
    String query ;
    try {
        
        Connection con = getConnection();
        query = "update employee set name = ?, position = ?, department = ?, salary = ? where id = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, emp.getName());
        pst.setString(2, emp.getPosition());
        pst.setString(3, emp.getDepartment());
        pst.setInt(4, emp.getSalary());
        pst.setInt(5, emp.getId());
        status = pst.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();  // ✅ Important to see errors
    }
    return status;
}
    public static int deleteRecords(Employee emp){
        int status = 0;
        PreparedStatement pst;
        String query;
        query = "delete from employee where id = ?";
        try{
            Connection con = getConnection();
            pst = con.prepareStatement(query);
            pst.setInt(1,emp.getId());
            status = pst.executeUpdate();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
        return status;
    }
}
