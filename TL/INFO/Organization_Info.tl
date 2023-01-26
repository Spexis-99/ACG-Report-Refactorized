[[
    (if (isa $obj "*LEGAL ORGANIZATION")
        ( 	
            (set LegOrgStruct (append (append (append $class "2_") $sur) ".html"))	
            (set LegOrgBrand (append (append (append $class "3_") $sur) ".html"))		
            
            (load "TL/INFO/OrganizationStrategy_Info.tl")
            (load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
            (load "../../../../_common_tl/LinkedFiles.tl")
            
            (outfile $LegOrgStruct)
            (load "TL/SECTIONS/Header.tl")
            (load "TL/INFO/OrganizationStructure_Info.tl")
            (load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
            (load "../../../../_common_tl/LinkedFiles.tl")
            
            (outfile $LegOrgBrand)
            (load "TL/SECTIONS/Header.tl")
            (load "TL/INFO/OrganizationBrand_Info.tl")
        )

        (   
            ////(if (isa $obj SECTION)
            
            ////    (
            ////        (load "Section_Info.tl")
            ////    )
            ////    (
            
            
                    (if (isa $obj "DEPARTMENT")
                        (
                            (load "Department_Info.tl")
                        )
                
                        (
                            (if (isa $obj "*ORGANIZATION")
                                (
                                    (set OrgStrat (append (append (append $class "2_") $sur) ".html"))	
                                    (set OrgBrand (append (append (append $class "3_") $sur) ".html"))						
                                    
                                    (load "OrganizationStructure_Info.tl")
                                    (load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
                                    (load "../../../../_common_tl/LinkedFiles.tl")
                                    
                                    (outfile $OrgStrat)
                                    (load "TL/SECTIONS/Header.tl")
                                    (load "OrganizationStrategy_Info.tl")
                                    (load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
                                    (load "../../../../_common_tl/LinkedFiles.tl")
                                    
                                    (outfile $OrgBrand)
                                    (load "TL/SECTIONS/Header.tl")
                                    (load "OrganizationBrand_Info.tl")
                                )
                            )
                        )
                    )
                ////)
            ////)
        )
    )
]]