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
         String sql = "INSERT INTO tbl_enrollment(batch_id,student_id,fees,discount_id,status_id) VALUES(?,?,?,?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setInt(1, Integer.parseInt(request.getParameter("b_id")));
         stmt.setInt(2, Integer.parseInt(request.getParameter("s_id")));
         stmt.setInt(3, Integer.parseInt(request.getParameter("fees")));
         stmt.setInt(4, Integer.parseInt(request.getParameter("d_id")));
         stmt.setInt(5, Integer.parseInt(request.getParameter("st_id")));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>
<input type=button class ="btn btn-primary" onClick="parent.location='../lists/enrollment_list.jsp'" value='View Enrollment Records'>
