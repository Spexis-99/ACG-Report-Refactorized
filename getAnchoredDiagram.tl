[[
	(set obj_me $obj)
	(load "TL/CORE/CheckMultiAnchor.tl")
    (if $anch_diagrams ( "( <a href=\"$(DiagRef2)\"> $obj </a> )" ) ( $obj ))
]]