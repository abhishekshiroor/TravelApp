<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>
		Itinerary
	</title>
	<link rel="stylesheet" type="text/css" href="confirm.css" />
	<script language="javascript" type="text/javascript">
		function monthName(monthIndex) {
			var month=new Array(12);
			month[1]="January";
			month[2]="February";
			month[3]="March";
			month[4]="April";
			month[5]="May";
			month[6]="June";
			month[7]="July";
			month[8]="August";
			month[9]="September";
			month[10]="October";
			month[11]="November";
			month[12]="December";
			return month[parseInt(monthIndex)]
		}
	</script>
	</head>

	<body>

	<div id="main">
		<form action="action.do" name="mainform" id="mainform">
		<table>
			<tr id="header"> 
				<th width="40px" id="itititle">Itinerary </th>
				<th></th>
				<th width="20px" id="iticancel"><img src="images/iticancel.png" alt="iti cancel"/></th>
			</tr>
			<tr id="mainrow"> 
				<td id="iticonfirm"></td>
				<td id="textcenter"> 
				Number of passengers: ${itinerary.passengers} <br/>
				From: ${itinerary.from} <br/>
				To: ${itinerary.to} <br/>
				Departing: 
				<script type="text/javascript">
					document.write(monthName(${itinerary.dMonth})); 
				</script>
				${itinerary.dDay} ${itinerary.dYear} ${itinerary.dTime}<br/>
				Returning: 
				<script type="text/javascript">
					document.write(monthName(${itinerary.rMonth})); 
				</script>
				${itinerary.rDay} ${itinerary.rYear} ${itinerary.rTime} <br/>
				</td>
				<td> </td>
			</tr>
			<tr id="submitrow"> 
				<td> </td>
				<td> <input type="submit" class="submit"/></td>
				<td> </td>
			</tr>
		</table>
		</form>
	</div>

	<body>
</html>