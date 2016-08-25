
<%@include file="../header.jsp" %>
  
        <h1>Discounts</h1>
        
        <form action = "../saves/discount_save.jsp" method ="post">
 
        <div class= "form-group">
            <label>Discount Type:</label>
            <input type="text" name="title" required="required" placeholder="Enter Discount Title" class="form-control">
        </div>
        <div class= "form-group">
            <label>Discount Amount:</label>
            <input type="text" name="damount" required="required" placeholder="Enter Discount Amount" class="form-control">
        </div>
        

        <button type="submit" name ="submit" class ="btn btn-success"> Insert </button>
        <input type=button class ="btn btn-danger" onClick="parent.location='../index.jsp'" value='Back '>
        </form>
        

       
        
<%@include file="../footer.jsp" %>