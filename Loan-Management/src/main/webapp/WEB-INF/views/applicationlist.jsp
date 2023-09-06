<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.ArrayList,com.model.LoanApplicant"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Applicant List</title>

<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Loan Applicant List</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>App_id</th>
					<th>Cus_id</th>
					<th>App_date</th>
					<th>LOan_type</th>
					<th>No Of Years</th>
					<th>Loan amount</th>
					<th>Emi from</th>
					<th>Emi To</th>
					<th>Nominee</th>
					<th>Cibil Score</th>
					<th>Status</th>
					<th>Remarks</th>
					<th>Admin User</th>
					<th>Last Updated Date</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<LoanApplicant> Applist = (ArrayList<LoanApplicant>) request.getAttribute("llist");
				for (LoanApplicant e : Applist) {
				%>
				
					<tr>
						<td><%=e.getId()%></td>
						<td><%=e.getCustomerId()%></td>
						<td><%=e.getApplicationDate()%></td>
						<td><%=e.getLoanTypeId()%></td>
						<td><%=e.getNoy()%></td>
						<td><%=e.getLoanAmount()%></td>
						<td><%=e.getEmiRangeFrom()%></td>
						<td><%=e.getEmiRangeTo()%></td>
						<td><%=e.getNominalRequested()%></td>
						<td><%=e.getCibilScore()%></td>
						<td><%=e.getStatus()%></td>
						<td><%=e.getRemarks()%></td>
						<td><%=e.getProcessedUser()%></td>
						<td><%=e.getProcessedDate()%></td>
						<td><form action="view" method="post"><input type="hidden" value="<%=e.getId()%>" %><input type="submit"></form></td>
					</tr>
				

				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<!-- Include Bootstrap JS and jQuery (if needed) for Bootstrap functionality -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
