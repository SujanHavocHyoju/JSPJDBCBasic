
<%@include file="../header.jsp" %>
  
        <h1>Timings</h1>
        
        <form action = "../saves/timing_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Timing Name:</label>
            <input type="text" name="tname" required="required" placeholder="Enter Timing Name" class="form-control">
        </div>
        <div class= "form-group">
            <label>Start Time:</label>
            <input type="text" name="stime" required="required" placeholder="Enter Start Time" class="form-control">
        </div>
        <div class= "form-group">
            <label>End Time:</label>
            <input type="text" name="etime" required="required" placeholder="Enter End Time" class="form-control">
        </div>
                    
        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
<%@include file="../footer.jsp" %>