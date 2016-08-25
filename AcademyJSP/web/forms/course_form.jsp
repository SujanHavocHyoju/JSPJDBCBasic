
<%@include file="../header.jsp" %>
  
        <h1>Courses</h1>
        
        <form action = "../saves/course_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Name:</label>
            <input type="text" name="name" required="required" placeholder="Enter Course Name" class="form-control">
        </div>
        <div class= "form-group">
            <label>Fee:</label>
            <input type="text" name="fee" required="required" placeholder="Enter Course Fee" class="form-control">
        </div>
        <div class= "form-group">
            <label>Duration:</label>
            <input type="text" name="duration" required="required" placeholder="Enter Course Duration" class="form-control">
        </div>
        <div class= "form-group">
            <label>Duration Type:</label>
            <input type="text" name="duration_type" required="required" placeholder="Enter Dutarion Type" class="form-control">
        </div>
        <div class= "checkbox" class= "form-group">
            <label><h4>Status:</h4> </label>
            <label><input type ="checkbox" name="status"/> Active </label>
        </div>

        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
<%@include file="../footer.jsp" %>