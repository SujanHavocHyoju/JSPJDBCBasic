<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@include file="../header.jsp" %>

<h1>Student Records</h1>
<table class="table table-striped">
    <tr>
        <th>Student Name</th>
        <th>Student Email</th>
        <th>Student Contact</th>
    </tr>
  
        <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/academy", "root", "");
                String sql = "SELECT * from tbl_students ";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
         %>
        
        <tr>
            <td><%=rs.getString("student_fname")%> <%=rs.getString("student_lname")%></td>
            <td><%=rs.getString("student_email")%></td>
            <td><%=rs.getString("student_contact")%></td>
        </tr>
                    
            <%    }
            }catch(SQLException se){
                out.println("<h1>" + se.getMessage() + "</h1>");
            }
        %>
</table>
<input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>

<%@include file="../footer.jsp" %>