
<%@page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
    String username = request.getParameter("u_name");
    String password = request.getParameter("pass");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/text", "root", "");
            
PreparedStatement st = conn.prepareStatement("insert into users values(?,?)");

st.setString(1, username);
st.setString(2, password);

if(st.execute()){
    
    response.sendRedirect("login.jsp"); 
}







%>