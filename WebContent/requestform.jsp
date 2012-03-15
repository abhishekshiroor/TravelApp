<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>
		Travel Form
	</title>
	<link rel="stylesheet" type="text/css" href="app.css" />
	<script type="text/javascript" language="javascript">
		function checkInput(){
			if(document.mainform.from.value==""){
				alert("From field is blank");
				return false;
			}
			else if(document.mainform.to.value==""){
				alert("To field is blank");
				return false;
			}
			else if(document.mainform.dmonth.value=="dmonthselect" ||
					document.mainform.dday.value=="ddayselect" ||
					document.mainform.dyear.value=="dyearselect") {
				alert("Departure date not set");
				return false;
			}
			else if(document.mainform.rmonth.value=="rmonthselect" ||
					document.mainform.rday.value=="rdayselect" ||
					document.mainform.ryear.value=="ryearselect") {
				alert("Return date not set");
				return false;
			}

			var departureDate = new Date(parseInt(document.mainform.dyear.value),
										 parseInt(document.mainform.dmonth.value)-1,
							 		     parseInt(document.mainform.dday.value));

			var returnDate = new Date(parseInt(document.mainform.ryear.value),
							parseInt(document.mainform.rmonth.value)-1,
							parseInt(document.mainform.rday.value));

			//alert(departureDate.toDateString() + "\n" + returnDate.toDateString());
			if(returnDate<departureDate){
				alert("Return date should be after departure date: " + departureDate.toDateString());
				return false;
			}

			//var finalString = "Number of passengers: " + document.mainform.passengers.value + "\n" +
			//					"From: " + document.mainform.from.value + "\n" +
			//					"To: " + document.mainform.to.value + "\n" +
			//					"Departing: " + departureDate.toDateString() + " " + document.mainform.dtime.value + "\n" +
			//					"Returning: " + returnDate.toDateString() + " " + document.mainform.rtime.value;

			//alert(finalString);
			return true;
		}	
	</script>
	<script language="javascript" type="text/javascript">
		function daylist(comboname, listindex) {
		if(comboname=="dmonth"){
			var daycombo = document.mainform.dday;
		}
		else{
			var daycombo = document.mainform.rday;
		}
		if(listindex=="dmonthselect"){
			daycombo.options.length = 0;
			daycombo.options[0]=new Option("Select Day","ddayselect");
		}
		else{
			daycombo.options.length = 0;
			daycombo.options[0]=new Option("Select Day","rdayselect");
		}
		
		
		switch (listindex)
		{
		case "1" :
		case "3" :
		case "5" :
		case "7" :
		case "8" :
		case "10" :
		case "12" :
			var i=1;
			for (i=1;i<=31;i++){
				daycombo.options[i]=new Option(i.toString(),i.toString());
			}
			break;

		case "2" :
			var k=1;
			for (k=1;k<=28;k++){
				daycombo.options[k]=new Option(k.toString(),k.toString());
			}
			break;

		case "4" :
		case "6" :
		case "9" :
		case "11" :
			var j=1;
			for (j=1;j<=30;j++){
				daycombo.options[j]=new Option(j.toString(),j.toString());
			}
			break;

		}
		return true;
	}
	</script>
	</head>

	<body>

	<div id="main">
		<form onsubmit="return checkInput();" action="save.do" name="mainform" id="mainform" method="post">
		<table id="ttable">
			<tr height="30" id="frow">
				<td id="apptitle"> <img src="images/title.png" alt="app title"/></td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td id="controls"><img src="images/controls.png" alt="controls"/> </td>

			</tr>
			<tr height="35" class="trow">
				<th>From</th>
				<td><input type="text" name="from" id="from" value="" /></td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr height="35" class="trow">
				<th>To</th>
				<td><input type="text" name="to" id="to" value="" /></td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr height="35">
				<th>Departure Date</th>
				<td>
            		<select name="dmonth" onchange="javascript:daylist(this.name,this.options[this.selectedIndex].value);">
              			<option value="dmonthselect">Select Month</option>
              			<c:forEach var="dmonthvar" items="${months}" varStatus="dmonthLoopCount" >
              				<option value="${dmonthLoopCount.count}">${dmonthvar}</option>
              			</c:forEach>
            		</select>
          		</td>
          		<td>
          			<script type="text/javascript" language="JavaScript">
						document.write('<select name="dday"><option value="ddayselect">Select Day</option></select>')
					</script>
					<noscript>
						<select name="dday"><option value="ddayselect">Select Day</option></select>
					</noscript>
          		</td>
          		<td>
            		<select name="dyear">
              			<option value="dyearselect">Select Year</option>
              			<c:forEach var="dyearvar" items="${years}" varStatus="dyearLoopCount" >
              				<option value="${dyearvar}">${dyearvar}</option>
              			</c:forEach>
            		</select>
          		</td>
          		<td>
            		<select name="dtime">
              			<c:forEach var="dtimevar" items="${times}" varStatus="dtimeLoopCount" >
              				<option value="${dtimevar}">${dtimevar}</option>
              			</c:forEach>
            		</select>
          		</td>
			</tr>
			<tr height="35">
				<th>Return Date</th>
				<td>
            		<select name="rmonth"  onchange="javascript:daylist(this.name,this.options[this.selectedIndex].value);">
              			<option value="rmonthselect">Select Month</option>
              			<c:forEach var="rmonthvar" items="${months}" varStatus="rmonthLoopCount" >
              				<option value="${rmonthLoopCount.count}">${rmonthvar}</option>
              			</c:forEach>
            		</select>
          		</td>
          		<td>
            		<script type="text/javascript" language="JavaScript">
						document.write('<select name="rday"><option value="rdayselect">Select Day</option></select>')
					</script>
					<noscript>
						<select name="rday"><option value="rdayselect">Select Day</option></select>
					</noscript>
          		</td>
          		<td>
            		<select name="ryear">
              			<option value="ryearselect">Select Year</option>
              			<c:forEach var="ryearvar" items="${years}" varStatus="ryearLoopCount" >
              				<option value="${ryearvar}">${ryearvar}</option>
              			</c:forEach>
            		</select>
          		</td>
          		<td>
            		<select name="rtime">
              			<c:forEach var="rtimevar" items="${times}" varStatus="rtimeLoopCount" >
              				<option value="${rtimevar}">${rtimevar}</option>
              			</c:forEach>
            		</select>
          		</td>
			</tr>
			<tr height="35">
				<th>Passengers</th>
				<td>
            		<select name="passengers">
              			<c:forEach var="psgvar" items="${passengers}" varStatus="psgLoopCount" >
              				<option value="${psgLoopCount.count}">${psgLoopCount.count}</option>
              			</c:forEach>
            		</select>
          		</td>
          		<td> </td>
				<td> </td>
				<td> </td>
			</tr>

			<tr height="35" id="lrow">
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> <input type="submit" class="submit"/></td>

			</tr>

		</table>
		</form>
	</div>

	<body>
</html>