[[
(outfile "VersionInfo.json") 
"( replace_innerHTML= `[ )"


"( 
    {
        'kb-name': '$(kb-name)',
        'version-number': '$(version-number)',
        'saved-by': '$(saved-by)',
        [[
            (if (not(= $kb-comment $empty)) 
                ("'kb-comment': '$(kb-comment)',")
                ("'kb-comment': 'No comments',")
            )    
        ]]
        }
)"
]]
