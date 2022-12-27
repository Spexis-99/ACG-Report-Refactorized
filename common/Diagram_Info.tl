[[
//// ----------------------------------------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Description, the name and image of each Diagram and it's related to be displayed in the body
//// of the html reports
//// Loaded by ../../../../_common_tl/GenerateDiagram.tl
//// Loads: TL/CORE/SECTIONS/Header.tl, ../../../../_common_tl/SettingDiagramOutfile.tl, ../../../../_common_tl/CheckClassification.tl, TL/CORE/SettingOutfilename, ../../../../_common_tl/MarksRef.tl
//// Input variables: diag, DiagRef, diag_name, obj_me, sur_me 
//// Output variables: gen_diag_objects
//// ----------------------------------------------------------------------------------------------------------------------------

(load "TL/SECTIONS/Header.tl")
]]
<DIV ALIGN="center">
	<body>
		<MAP NAME=\"$(diag_name)\">\n
[[
(set diagram_objects (children-positions $diag 0))

(foreach dgm-obj $diagram_objects
	(
		(set text (label $dgm-obj))
		(if (isa $dgm-obj "#DIAGRAM")
			(
				(set ddiag $dgm-obj)
				(set label_need "1")
				(load "../../../../_common_tl/SettingDiagramOutfile.tl")
				(set dgm-obj_ref $DiagRef)
				(set ObjClass "1")
				(set class "Diagram")
			)
			(
				(set obj $dgm-obj)
				(load "../../../../_common_tl/CheckClassification.tl")
				(load "../../../../_common_tl/SettingOutfilename.tl")
				(if (= $ObjClass $one)
					((set dgm-obj_ref (append "../" $filename)))
				)
			)
		)
		(coord $dgm-obj left_pos top_pos right_pos bottom_pos)
		(set obj_width (subtract $right_pos $left_pos))
		(if (= $ObjClass $one)
			(
"(				<AREA SHAPE="RECT" id="trial_0" COORDS=\"$(left_pos),$(top_pos),$(right_pos),$(bottom_pos)\" HREF=\"$(dgm-obj_ref)\" title="$(class): $(text)\" > \n)"
			)
			(
"(				<AREA SHAPE="RECT" id="trial_1" COORDS=\"$(left_pos),$(top_pos),$(right_pos),$(bottom_pos)\" title="$(class): $(text)\" >\n)"
			)
		)
		(set obj_me $dgm-obj)
		(set sur_me (surrogate $dgm-obj))
		(load "../../../../_common_tl/MarksRef.tl")
	)
)
]]
		</MAP>
			<center>
				<p class="title" style="font-size:0px; margin:0px">
					<a id="RelatedAnchor" href="$(diag_page)" title="Click here to see full diagram" >$(diag)</a>
				</p>
			</center>
			<ul id="myList" class="breadcrumbs"></ul>
			<IMG SRC=\"$(image_filename)\" USEMAP=\"#$(diag_name)\" title="$(diag) Diagram" border="noborder">
[[			
			(if (= $diag "LandingPage")
				(
					"(
						////<a href="../chartsPage.html"><button  class="button-68" role="button">charts</button></a>
						<div class="dropdown" style="top: 7px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية<i class="fas fa-caret-down"> </i></button>
							<div class="dropdown-content">
								<a href="../MainStrategyChart.html">الإستراتيجية</a>
								<a href="../ObjectiveChart.html">الأهداف</a>
								<a href="../ProjectChart.html">المشاريع</a>
								<a href="../CapabilityChart.html">القدرات</a>
								<a href="../service_chart.html">الخدمات</a>
								<a href="../ProcessChart.html">الإجراءت</a>
								<a href="../Datachart.html">البيانات</a>
								<a href="../ApplicationChart.html">التطبيقات</a>								
								<a href="../networkChart.html">Network</a>
								<a href="../ServerChart.html">Servers</a>
								<a href="../SAPChart.html">Sap</a>								
								<a href="../vlanChart.html">VLAN</a>	
							</div>
						</div>
					)"
				)						
			)
			(if (= $diag "Sites Overview")
				(
					"(
						////<a href="../chartsPage.html"><button  class="button-68" role="button">charts</button></a>
						<div class="dropdown" style="top: 1px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية<i class="fas fa-caret-down"> </i></button>
							<div class="dropdown-content">
								<a href="../networkChart.html">Network</a>
								<a href="../SAPChart.html">Sap</a>
								<a href="../ServerChart.html">Servers</a>
								<a href="../vlanChart.html">VLAN</a>
							</div>
						</div>
					)"
				)						
			)
			(if (= $diag "Application As-Is")
				(
					"(
						////<a href="../chartsPage.html"><button  class="button-68" role="button">charts<i class="fas fa-caret-down"> </i></button></a>
						<div class="dropdown" style="top: 1px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية<i class="fas fa-caret-down"> </i></button>
							<div class="dropdown-content">
								<a href="../ApplicationChart.html">التطبيقات</a>
							</div>
						</div>
					)"
				)						
			)
			(if (= $diag "الاستراتيجية")
				(
					"(
						<div class="dropdown" style="top: 1px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية</button>
							<div class="dropdown-content">
								<a href="../MainStrategyChart.html">الإستراتيجية</a>
								<a href="../ObjectiveChart.html">الأهداف</a>
								<a href="../ProjectChart.html">المشاريع</a>									
							</div>
						</div>
					)"
				)						
			)
			(if (= $diag "الاعمال")
				(
					"(
						<div class="dropdown" style="top: 1px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية</button>
							<div class="dropdown-content">
								<a href="../ProcessChart.html"> الإجراءت</a>
								<a href="../CapabilityChart.html"> القدرات</a>
								<a href="../service_chart.html"> الخدمات</a>									
							</div>
						</div>
					)"
				)						
			)
			(if (= $diag "DATA")
				(
					"(
						<div class="dropdown" style="top: 1px;right: 50px;">
							<button class="dropbtn">الرسوم البيانية</button>
							<div class="dropdown-content">
								<a href="../Datachart.html">البيانات</a>								
							</div>
						</div>
					)"
				)						
			)
]]
		</DIV>
	</body>
	<script src="../../js/bc.js"></script>
</html> \n
[[ (set gen_diag_objects (union $gen_diag_objects $diagram_objects)) ]]