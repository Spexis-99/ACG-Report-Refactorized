[[
    //// input obj: the object or a set of objects
    //// input isSetP: 1 if obj is a set otherwise 0
    //// input hasFormP: 1 if object has clickable form, 2 if object has clickable diagram, 0 otherwise 
    
    (set objOrSet $Name)
    (set _hasFormP $Report_Flag)
    (set _count  (numberin $objOrSet))
    
    (if (= $_hasFormP "0")
        ((if   (= $_count "1")
               ( "(  $(objOrSet)  )" )
               ((foreach __elem $objOrSet ( "( <li> $__elem </li> )" ) )) 
             
         )) 
         ((if  (=_hasFormP "1")
               ((if (= $_count "1")
                    ( (set obj $objOrSet) (load "TL/CORE/SettingOutfilename1.tl")  "( <a href=\"$(file)\"> $obj </a> )" )
                    ( (foreach __elem $objOrSet 
                         ( (set obj $__elem) (load "TL/CORE/SettingOutfilename1.tl") "( <li> <a href=\"$(file)\" > $obj </a></li> )"  )
                    ))  
               ))
               ((if (= $_count "1")
                    ( (set obj $objOrSet) (load "TL/CORE/getAnchoredDiagram.tl")  )
                    ( (foreach __elem $objOrSet 
                         ( "( <li> )" (set obj $__elem) (load "TL/CORE/getAnchoredDiagram.tl") "( </li> )"  )
                    ))
               ))
        ))
   )
]]