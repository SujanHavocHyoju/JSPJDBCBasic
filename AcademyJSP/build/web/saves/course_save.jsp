<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%
    
 if(!request.getMethod().equalsIgnoreCase("post")){
    out.println("<h1>Access Denied</h1>");
}
 else{
     try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
         String sql = "INSERT INTO tbl_courses(course_name,course_fee,course_duration,duration_type) VALUES(?,?,?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setString(1, request.getParameter("name"));
         stmt.setInt(2, Integer.parseInt(request.getParameter("fee")));
         stmt.setInt(3, Integer.parseInt(request.getParameter("duration")));
         stmt.setString(4, request.getParameter("duration_type"));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>

<input type=button class ="btn btn-primary" onClick="parent.location='../lists/course_list.jsp'" value='View Course Records'>
    