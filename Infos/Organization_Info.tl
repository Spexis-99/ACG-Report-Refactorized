[[
    (if (isa $obj "*LEGAL ORGANIZATION")
        ( 	
            (set LegOrgStruct (append (append (append $class "2_") $sur) ".html"))	
            (set LegOrgBrand (append (append (append $class "3_") $sur) ".html"))		
            
            (load "Infos/OrganizationStrategy_Info.tl")
            (load "TL/CORE/RelatedDiagrams.tl")
            (load "TL/CORE/LinkedFiles.tl")
            
            (outfile $LegOrgStruct)
            (load "TL/CORE/Header.tl")
            (load "Infos/OrganizationStructure_Info.tl")
            (load "TL/CORE/RelatedDiagrams.tl")
            (load "TL/CORE/LinkedFiles.tl")
            
            (outfile $LegOrgBrand)
            (load "TL/CORE/Header.tl")
            (load "Infos/OrganizationBrand_Info.tl")
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
                                    (load "TL/CORE/RelatedDiagrams.tl")
                                    (load "TL/CORE/LinkedFiles.tl")
                                    
                                    (outfile $OrgStrat)
                                    (load "TL/CORE/Header.tl")
                                    (load "OrganizationStrategy_Info.tl")
                                    (load "TL/CORE/RelatedDiagrams.tl")
                                    (load "TL/CORE/LinkedFiles.tl")
                                    
                                    (outfile $OrgBrand)
                                    (load "TL/CORE/Header.tl")
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