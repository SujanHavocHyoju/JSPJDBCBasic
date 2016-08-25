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
         String sql = "INSERT INTO tbl_discounts(discount_title,discount_amt) VALUES(?,?)";
         PreparedStatement stmt = conn.prepareStatement(sql);
         stmt.setString(1, request.getParameter("title"));
         stmt.setInt(2, Integer.parseInt(request.getParameter("damount")));
         stmt.executeUpdate();
         conn.close();
     }catch(SQLException se){
         out.println("<h1>" + se.getMessage() + "</h1>");
     }
 }   

%>
<input type=button class ="btn btn-primary" onClick="parent.location='../lists/discount_list.jsp'" value='View Discount Records'>
