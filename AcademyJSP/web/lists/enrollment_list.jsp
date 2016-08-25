<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Enrollment Records</h1>
<table class="table table-striped">
    <tr>
        <th>Batch ID</th>
        <th>Student ID</th>
        <th>Enquiry Date</th>
        <th>Fees</th>
        <th>Discount ID</th>
        <th>Status ID</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_enrollment ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
        %>
        
        <tr>
            <td><%=rs.getString("batch_id")%></td>
            <td><%=rs.getString("student_id")%></td>
            <td><%=rs.getString("enquiry_date")%></td>
            <td><%=rs.getString("fees")%></td>
            <td><%=rs.getString("discount_id")%></td>
            <td><%=rs.getString("status_id")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>