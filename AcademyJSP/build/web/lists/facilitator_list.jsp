<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Facilitator Records</h1>
<table class="table table-striped">
    <tr>
        <th>Facilitator Name</th>
        <th>Facilitator Email</th>
        <th>Facilitator Contact</th>
        <th>Facilitator Rate</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_facilitators ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
        %>
        
        <tr>
            <td><%=rs.getString("facilitator_fname")%> <%=rs.getString("facilitator_lname")%></td>
            <td><%=rs.getString("facilitator_email")%></td>
            <td><%=rs.getString("facilitator_contact")%></td>
            <td><%=rs.getString("facilitator_rate")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>