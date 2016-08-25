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
         String sql = "INSERT INTO tbl_students(student_fname,student_lname,student_email,student_contact) VALUES(?,?,?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setString(1, request.getParameter("fname"));
         stmt.setString(2, request.getParameter("lname"));
         stmt.setString(3, request.getParameter("email"));
         stmt.setString(4, request.getParameter("contact"));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>
<input type=button class ="btn btn-primary" onClick="parent.location='../lists/student_list.jsp'" value='View Student Records'>
