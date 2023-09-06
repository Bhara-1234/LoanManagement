<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan Applicant Form</title>
    
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <!-- Custom CSS for styling -->
    <style>
        /* Add your custom CSS styles here */
        body {
            background-color: #f4f4f4;
        }
        .container {
            margin-top: 30px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        
        /* Add more custom styles as needed */
    </style>
</head>
<body>
    <div class="container">
        <h1>Loan Applicant Form</h1>
        <form action="loanapplicant" method="post">
            <!-- Input fields for the loan applicant data -->
            <!-- Bootstrap form group classes for styling 
             <div class="form-group">
                <label for="custId">Customer ID:</label>
                <input type="text" class="form-control" name="id">
            </div> -->
           
            
            <div class="form-group">
                <label for="custId">Customer ID:</label>
                <input type="text" class="form-control" name="customerId">
            </div>
            
            <div class="form-group">
                <label for="apDate">Application Date:</label>
                <input type="date" class="form-control" name="applicationDate">
            </div>
        
            <div class="form-group">
                <label for="lntyId">Loan Type ID:</label>
                <input type="text" class="form-control" name="loanTypeId">
            </div>
            <div class="form-group">
                <label for="noy">No.of.Years:</label>
                <input type="text" class="form-control" name="noy">
            </div>
            <div class="form-group">
                <label for="amount">Loan Amount:</label>
                <input type="text" class="form-control" name="loanAmount">
            </div>
            <div class="form-group">
                <label for="remarks">Conclusion Remarks:</label>
                <textarea class="form-control" name="remarks"></textarea>
            </div>
            <div class="form-group">
                <label for="emiFrom">EMI Range From:</label>
                <input type="text" class="form-control" name="emiRangeFrom">
            </div>
            
            <div class="form-group">
                <label for="emiTo">EMI Range To:</label>
                <input type="text" class="form-control" name="emiRangeTo">
            </div>
            
            <div class="form-group">
                <label for="nomRequested">Nominal Requested:</label>
                <input type="text" class="form-control" name="nominalRequested">
            </div>
            
            <div class="form-group">
                <label for="cibilScore">CIBIL Score:</label>
                <input type="text" class="form-control" name="cibilScore">
            </div>
            
            <div class="form-group">
                <label for="status">Status:</label>
                <input type="text" class="form-control" name="status">
            </div>
            
        
            
            <div class="form-group">
                <label for="processedUser">Processed User:</label>
                <input type="text" class="form-control" name="processedUser">
            </div>
            
          <div class="form-group">
                <label for="processedDate">Processed Date:</label>
                <input type="date" class="form-control" name="processedDate">
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
    <!-- Include Bootstrap JS and jQuery (if needed) for Bootstrap functionality -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
