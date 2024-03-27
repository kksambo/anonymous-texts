<%-- 
    Document   : loginn
    Created on : Mar 23, 2024, 2:17:02 PM
    Author     : Mecer
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="users.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<% 
 ArrayList<User> user = new ArrayList();
  // Establishing connection to the database
  Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/text", "root", "");
            
            Statement st = conn.createStatement();
            String q = "select * from users";
            ResultSet rs = st.executeQuery(q);
                
    
    

while(rs.next()){
    
    
   user.add(new User(rs.getString("username"),rs.getString("password"))); 
}
    
    String username = request.getParameter("u_name");
    String password = request.getParameter("pass");
    boolean log = false;
    
    for (int i = 0; i < user.size(); i++) {
        
        if(user.get(i).getUsername().equalsIgnoreCase(username) && user.get(i).getPassword().equals(password)){
            
            log = true;
            
        }
            
    }
    if (log) {
        session.setAttribute("u_name", username);
        //session.setAttribute("u_name", username);
        response.sendRedirect("texts.jsp");
    } else {
        out.print("Invalid Username");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fluffy</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
