
<%@include file="header.jsp" %>


<div class="container">
    <h1>Academy Records</h1>
    <hr>
    <div class="row">
        <div class="col-md-3">
            <p><h4>Courses</h4></p>
            <br/>
            <img src="src\courses.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/course_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/course_list.jsp'" value='View '>
            <br/>
        </div>

        <div class="col-md-3">
            <p><h4>Facilitators</h4></p>
            <br/>
            <img src="src\facilitator.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/facilitator_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/facilitator_list.jsp'" value='View '>
            <br/>
        </div>

        <div class="col-md-3">
            <p><h4>Students</h4></p>
            <br/>
            <img src="src\students.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/student_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/student_list.jsp'" value='View '>
            <br/>
        </div>	

        <div class="col-md-3">
            <p><h4>Enrollments</h4></p>
            <br/>
            <img src="src\enroll.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/enrollment_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/enrollment_list.jsp'" value='View '>
            <br/>
        </div>
    </div>
    
    <hr>
    
    <div class="row">
         <div class="col-md-3">
            <p><h4>Batches</h4></p>
            <br/>
            <img src="src\batches.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/batch_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/batch_list.jsp'" value='View '>
            <br/>
        </div>

        <div class="col-md-3">
            <p><h4>Timings</h4></p>
            <br/>
            <img src="src\timings.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/timing_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/timing_list.jsp'" value='View '>
            <br/>
        </div>

        <div class="col-md-3">
            <p><h4>Discounts</h4></p>
            <br/>
            <img src="src\discount.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/discount_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/discount_list.jsp'" value='View '>
            <br/>
        </div>	
        
        
        <div class="col-md-3">
            <p><h4>Statuses</h4></p>
            <br/>
            <img src="src\status.png" alt="..." class="img-circle" height="120" width="120">
            <br/>
            <input type=button class ="btn btn-success" onClick="parent.location='forms/status_form.jsp'" value='Insert'>
            <input type=button class ="btn btn-primary" onClick="parent.location='lists/status_list.jsp'" value='View '>
            <br/>
        </div>
    </div>
    <hr>
</div>




<%@include file="footer.jsp" %>