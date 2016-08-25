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
         String sql = "INSERT INTO tbl_batches(batch_code,course_id,facilitator_id,start_date,end_date,timing_id) VALUES(?,?,?,?,?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setString(1, request.getParameter("code"));
         stmt.setInt(2, Integer.parseInt(request.getParameter("c_id")));
         stmt.setInt(3, Integer.parseInt(request.getParameter("f_id")));
         stmt.setString(4, request.getParameter("sdate"));
         stmt.setString(5, request.getParameter("edate"));
         stmt.setInt(6, Integer.parseInt(request.getParameter("t_id")));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>
<input type=button class ="btn btn-primary" onClick="parent.location='../lists/batch_list.jsp'" value='View Batch Records'>
