
<%@include file="../header.jsp" %>
  
        <h1>Batches</h1>
        
        <form action = "../saves/batch_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Batch Code:</label>
            <input type="text" name="code" required="required" placeholder="Enter Batch Code" class="form-control">
        </div>
        <div class= "form-group">
            <label>Course ID:</label>
            <input type="text" name="c_id" required="required" placeholder="Enter Course ID" class="form-control">
        </div>
        <div class= "form-group">
            <label>Facilitator ID:</label>
            <input type="text" name="f_id" required="required" placeholder="Enter Facilitator ID" class="form-control">
        </div>
        <div class= "form-group">
            <label>Start Date:</label>
            <input type="text" name="sdate" required="required" placeholder="Enter Start Date" class="form-control">
        </div>
        <div class= "form-group">
            <label>End Date:</label>
            <input type="text" name="edate" required="required" placeholder="Enter End Date" class="form-control">
        </div>
        <div class= "form-group">
            <label>Timing ID:</label>
            <input type="text" name="t_id" required="required" placeholder="Enter Timing ID" class="form-control">
        </div>
            
        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
        <%@include file="../footer.jsp" %>