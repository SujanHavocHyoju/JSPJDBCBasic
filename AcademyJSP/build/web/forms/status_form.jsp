
<%@include file="../header.jsp" %>
  
        <h1>Status</h1>
        
        <form action = "../saves/status_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Status Name:</label>
            <input type="text" name="sname" required="required" placeholder="Enter Status Name" class="form-control">
        </div>
        <div class= "form-group">
            <label>Color:</label>
            <input type="text" name="color" required="required" placeholder="Enter Color" class="form-control">
        </div>
                    
        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
<%@include file="../footer.jsp" %>