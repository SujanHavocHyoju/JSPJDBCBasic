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
         String sql = "INSERT INTO tbl_timings(timing_name,start_time,end_time) VALUES(?,?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setString(1, request.getParameter("tname"));
         stmt.setString(2, request.getParameter("stime"));
         stmt.setString(3, request.getParameter("etime"));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>
<input type=button class ="btn btn-primary" onClick="parent.location='../lists/timing_list.jsp'" value='View Timing Records'>
