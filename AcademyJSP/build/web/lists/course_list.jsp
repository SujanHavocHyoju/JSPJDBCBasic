<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Course Records</h1>
<table class="table table-striped">
    <tr>
        <th>Course Name</th>
        <th>Course Fees</th>
        <th>Course Duration</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_courses ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
        %>
        
        <tr>
            <td><%=rs.getString("course_name")%></td>
            <td><%=rs.getString("course_fee")%></td>
            <td><%=rs.getString("course_duration")%> <%=rs.getString("duration_type")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>