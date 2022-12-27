[[   
	(if (isa $obj_me "#DIAGRAM")
		(                           
			(set diaglinkedfiles $obj_me.#OBJECT::#data_files)
"(			 <div class="bottom-ATab">\n)"
					(if $diaglinkedfiles
						(            
							(foreach diag_LF $diaglinkedfiles
								(    
									(set s $diag_LF)
									(set ch "\\")
                                    (set n (st-indexOf s ch))
                                    (set n (st-lastIndexOf s "\\"))
                                    (set l (st-length s))
                                    (set mone "-1")
                                    (set l (add l mone))
                                    (set n (add n "1"))
                                    (set s2 (substring s n l))

								    (set linkfileddirpath (append "../../DataFiles/" $s2))

									(set s3 $s2)
									(set ch "\.")
									(set n2 (st-indexOf s3 ch))
                                    (set n2 (st-lastIndexOf s3 "\."))
                                    (set l2 (st-length s3))
                                    (set mone "-1")
                                    (set l2 (add l2 mone))
                                    (set n2 (add n2 "1"))
                                    (set s4 (substring s3 n2 l2))

									(set s4 (upper $s4))
				                    (set jpg "JPG")
									(set png "PNG")
									(set bmp "BMP")
									(set gif "GIF")
									(set jpeg "JPEG")
									(set pdf "PDF")
									
									(if (or (or (or (or (or (= $s4 $pdf)(= $s4 $jpg)) (= $s4 $png)) (= $s4 $bmp)) (= $s4 $gif)) (= $s4 $jpeg))
										(
"(					<a href=\"$(linkfileddirpath)\" target="_blank" title=\"$(linkfileddirpath)\"> $s2  </a> <br>\n)"
										)
										(
"(					<a href=\"$(linkfileddirpath)\" title=\"$(linkfileddirpath)\"> $s2  </a> <br>\n)"
										)
									)
								)     
							)        
						)           
						(             
							"(غير مُحدّد\n)"
						)           
					)

					
"(					</div>
				
		</div>
        
    </body>
</html>)"
		)
		(
			(if (isa $obj_me "#OBJECT")			
				(	   
					(set objlinkedfiles $obj_me.#OBJECT::#data_files)
"(		 <div class="bottom-ATab">
					\n)"
			(if $objlinkedfiles
				(
					(foreach obj_LF $objlinkedfiles
						(	
							(set z $obj_LF)
							(set ch "\\")
							(set m (st-indexOf z ch))
							(set m (st-lastIndexOf z "\\"))
							(set i (st-length z))
							(set mone "-1")
							(set i (add i mone))
							(set m (add m "1"))
							(set z2 (substring z m i))
						
							(set linkfileodirpath (append "../DataFiles/" $z2))
						
							(set z3 $z2)
							(set ch "\.")
							(set m2 (st-indexOf z3 ch))
							(set m2 (st-lastIndexOf z3 "\."))
							(set i2 (st-length z3))
							(set mone "-1")
							(set i2 (add i2 mone))
							(set m2 (add m2 "1"))
							(set z4 (substring z3 m2 i2))

							(set jpg "jpg")
							(set png "png")
							(set bmp "bmp")
							(set gif "gif")
							(set jpeg "jpeg") 
						
							(if (or (or (or (or (= $z4 $jpg) (= $z4 $png)) (= $z4 $bmp)) (= $z4 $gif)) (= $z4 $jpeg))
								(
"(					<a href=\"$(linkfileodirpath)\" target="_blank" title=\"$(linkfileodirpath)\"> $z2 </a> <br>\n)"
								)
								(
"(					<a href=\"$(linkfileodirpath)\" title=\"$(linkfileodirpath)\"> $z2 </a> <br>\n)"
								)
							)
						)
					)
				)
				(
"(					غير مُحدّد\n)"
				)
			)
"(				</div>
			
	</div>
        
    </body>
</html>
 \n)"
				)
			)
		)
	)
	
]]