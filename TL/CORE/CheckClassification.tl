[[



	(if (not (or (and (isa $obj "*ORGANIZATION") (= Organization_Flag "1"))
				(or(and (isa $obj "*MISSION") (= Mission_Flag "1"))
					(or(and (isa $obj "Physical Server") (= Server_Flag "1"))
						(or(and (isa $obj "Cluster Server") (= Cluster_Flag "1"))
							(or(and (isa $obj "*APPLICATION") (= Application_Flag "1"))
								(or(and (isa $obj "SERVICE") (= Service_Flag "1"))
									(or(and (isa $obj "SECTION") (= Section_Flag "1"))
										(or(and (isa $obj "*OBJECTIVE") (= Objective_Flag "1"))	
											(or(and (isa $obj "DEPARTMENT") (= Department_Flag "1"))
												(or(and (isa $obj "DIVISION") (= Division_Flag "1"))
													(or(and (isa $obj "*INFORMATION") (= Information_Flag "1"))
														(or(and (isa $obj "*VIRTUAL LOCAL AREA NETWORK") (= Vlan_Flag "1"))
															(or(and (isa $obj "Virtual machine server") (= VirtServer_Flag "1"))
																(or(and (isa $obj "*NETWORK INTERCONNECTION DEVICE") (= Network_Flag "1"))
																	(or(and (isa $obj "*KEY PERFORMANCE INDICATOR") (= KPI_Flag "1"))
																		(or(and (isa $obj "*PROJECT") (= Project_Flag "1"))
																			(or(and(isa $obj "Storage Solution Building Block")(= DataStorage_Flag "1")) (and(isa $obj "Security Solution Building Block")(= Security_Flag "1"))))))))))))))))))))
																				((set ObjClass $zero))
																				((set ObjClass $one))
	)

]]
