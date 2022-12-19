[[
//// this page must contains the canvas code
(outfile "canvas.html")
(load "Header.tl")
]]

<body style="margin:0px; font-size:14px">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>
		
	<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		theme: "theme2",
		title:{
			text: "Overall Project Status"
		},
		data: [
		{
			type: "pie",
			showInLegend: true,
			toolTipContent: "#percent %",
			// yValueFormatString: "#0.#,,. Million",
			legendText: "{indexLabel}",
			dataPoints: [
				{  y: 30, indexLabel: "Ongoing" },
				{  y: 60, indexLabel: "Acheived" },
				{  y: 10, indexLabel: "Remaining" },
				
			]
		}
		]
	});
	chart.render();
}
	</script>
	<script src="../Scripts/canvasjs.min.js"></script>
	
	<table cellspacing="0" cellpadding="0" style="width:100%;background-image:url(../images/TopGradient.png);background-repeat:repeat-x;">
		<tr>
			<td>
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td>
							
						</td>
						<td style="vertical-align:middle">
							Project Chart
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
			<td style="background-image:url(../Images/TabSelected.png); margin:3px; color:#FFFFFF; font-weight:bold;">
				Charts
			</td>
			<td style="background-image:url(../Images/TabNormal.png); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				[["(<a href="projectScore.html" style="color:#FFFFFF; " onmouseover="#000000">  Score </a>)"]]			
			</td>
			<td width="100%"></td>
		</tr>
	</table>
		<table class="firstbox" align="center" cellspacing="0" cellpadding="0" width="95%">
			<tr>
				<td width="4%">
						<table align=center cellspacing="10" cellpadding="10" border="4" height="400" width="600">
							<tr>
								<td>
									<div id="chartContainer" style="height: 400px; width: 100%;"></div>
								</td>
							</tr>
						</table>
			</td>
		</tr>
	</table>

</body>
</html>

