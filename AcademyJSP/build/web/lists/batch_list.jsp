<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Batch Records</h1>
<table class="table table-striped">
    <tr>
        <th>Batch Code</th>
        <th>Course ID</th>
        <th>Facilitator ID</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Timing ID</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_batches ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
        %>
        
        <tr>
            <td><%=rs.getString("batch_code")%></td>
            <td><%=rs.getString("course_id")%></td>
            <td><%=rs.getString("facilitator_id")%></td>
            <td><%=rs.getString("start_date")%></td>
            <td><%=rs.getString("end_date")%></td>
            <td><%=rs.getString("timing_id")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>