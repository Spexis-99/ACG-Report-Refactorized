[[
    ////filenae: Randomefile
    (set Obj (new-list))
    (set newObj "whatever")
    (list-append $Obj $newObj)
    (load "FileUsingObjVariable")
    (list-remove Obj newObj)
]]

[[
    ////filenae: FileUsingObjVariable
    (foreach CurrObj $Obj ((set obj $CurrObj)))
]]