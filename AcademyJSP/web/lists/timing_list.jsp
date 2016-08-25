<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Timing Records</h1>
<table class="table table-striped">
    <tr>
        <th>Timing Name</th>
        <th>Time</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_timings ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
        %>
        
        <tr>
            <td><%=rs.getString("timing_name")%></td>
            <td><%=rs.getString("start_time")%> to <%=rs.getString("end_time")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>