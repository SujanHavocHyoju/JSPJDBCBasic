
<%@include file="../header.jsp" %>
  
        <h1>Students</h1>
        
        <form action = "../saves/student_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>First Name:</label>
            <input type="text" name="fname" required="required" placeholder="Enter First Name" class="form-control">
        </div>
        <div class= "form-group">
            <label>Last Name:</label>
            <input type="text" name="lname" required="required" placeholder="Enter Last Name" class="form-control">
        </div>
        <div class= "form-group">
            <label>Email</label>
            <input type="text" name="email" required="required" placeholder="Enter Email" class="form-control">
        </div>
        <div class= "form-group">
            <label>Contact:</label>
            <input type="text" name="contact" required="required" placeholder="Enter Contact" class="form-control">
        </div>
        
        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

<%@include file="../footer.jsp" %>