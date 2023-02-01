[[
	(set obj_me $obj)
	(load "../../../../_common_tl/CheckMultiAnchor.tl")
    (if $anch_diagrams ( "( <a href=\"$(DiagRef2)\"> $obj </a> )" ) ( $obj ))
]]