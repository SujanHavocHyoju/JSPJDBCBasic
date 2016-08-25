
<%@include file="../header.jsp" %>
  
        <h1>Enrollment</h1>
        
        <form action = "../saves/enrollment_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Batch ID:</label>
            <input type="text" name="b_id" required="required" placeholder="Enter Batch ID" class="form-control">
        </div>
        <div class= "form-group">
            <label>Student ID:</label>
            <input type="text" name="s_id" required="required" placeholder="Enter Student ID" class="form-control">
        </div>
        <div class= "form-group">
            <label>Fees:</label>
            <input type="text" name="fees" required="required" placeholder="Enter Fees" class="form-control">
        </div>
        <div class= "form-group">
            <label>Discount ID:</label>
            <input type="text" name="d_id" required="required" placeholder="Enter Discount" class="form-control">
        </div>
        <div class= "form-group">
            <label>Status ID:</label>
            <input type="text" name="st_id" required="required" placeholder="Enter Status ID" class="form-control">
        </div>

        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
<%@include file="../footer.jsp" %>