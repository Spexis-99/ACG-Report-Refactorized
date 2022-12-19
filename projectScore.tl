[[
//// this page must contains the canvas code
(outfile "projectScore.html")
(load "TL/CORE/Header.tl")
]]

<body style="margin:0px; font-size:14px">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>
	<style>

table, th, td {
    border-color:#39889E;
    border-collapse: collapse;
}

table#t01 tr:nth-child(even) {
    background-color:#fff ;
}
table#t01 tr:nth-child(odd) {
   background-color:lightblue;
}
table#t01 th {
    background-color: #00A0AF;
    color: white;
}
</style>	
	
	
	<table cellspacing="0" cellpadding="0" style="width:100%;background-image:url(../images/TopGradient.png);background-repeat:repeat-x;">
		<tr>
			<td>
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td>
							
						</td>
						<td style="vertical-align:middle">
							Project Score
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url(../Images/TabNormal.png); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				[["(<a href="$(objectoutfile)" style="color:#FFFFFF; " onmouseover="#000000"> General </a>)"]]			
			</td>
			<td style="background-image:url(../Images/TabNormal.png); margin:3px; color:#FFFFFF; font-weight:bold;">
				[["(<a href="canvas.html" style="color:#FFFFFF; " onmouseover="#000000"> Charts </a>)"]]
			</td>
			<td style="background-image:url(../Images/TabSelected.png); margin:3px; color:#FFFFFF; font-weight:bold;">
				 Score
			</td>
			<td width="100%"></td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" width="95%">
		<tr>
			<td width="4%">
			<br>
				<table id="t01" align="center" cellspacing="10" cellpadding="10" border="4" height="400" width="600">
					<tr>
						<th>
							Evaluation Perspective
						</th>
						<th>
							Weight
						</th>
						<th>
							Project Score
						</th>
					</tr>
					<tr>
						<td>
							Cost
						</td>
						<td>
							25%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Technology
						</td>
						<td>
							20%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							External Stakeholder
						</td>
						<td>
							20%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Internal Stakeholder
						</td>
						<td>
							15%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Readiness
						</td>
						<td>
							10%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Man-days
						</td>
						<td>
							5%
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Duration
						</td>
						<td>
							5%
						</td>
						<td>
							
						</td>
					</tr>
				</table>
				<br><br>
				<table id="" align="center" cellspacing="10" cellpadding="10" border="4"  width="200">
					<tr>
						<td width="100"> <b>Total Score</b> </td>
						<td> </td>
					</tr>
				</table>
				<br><br>
			</td>
		</tr>
	</table>

</body>
</html>

