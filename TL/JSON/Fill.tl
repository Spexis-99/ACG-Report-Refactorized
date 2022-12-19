[[
////---------------------------------------------------------------------------------------------------------------------------
////Purpose:ThistlgeneratetheBannerwhichcontainstheselinks:Topview,Homepage,Search,Glossary,Print,Language,////VersionInfo,ContactusandHelp.
////Loadedby TL/CORE/GenerateReport.tl
////Loads:Banner.html
////Inputvariables:bodysrc
////---------------------------------------------------------------------------------------------------------------------------

(outfile "Fill.json")

//// set href by id
"( replace_href = `[ )"
"(
    { 
	    //// Social media URLs:
        //// ---------------------------------------------------
        (set FbLink "https://www.facebook.com/spgaksa")
        (set IgLink "")
        (set TwLink "https://twitter.com/SpgaKsa")
	
	    //// Banner 
        Customer_Home: "https://spga.gov.sa",
        [[(set page_name "الاستراتيجية")(set ddiag $page_name)(set label_need "0")(load "SettingDiagramOutfile.tl")]]
        banner_ref1: $(BannerRef),
        [[(set page_name "الاعمال")(set ddiag $page_name)(set label_need "0")(load "SettingDiagramOutfile.tl")]]
        banner_ref2: $(BannerRef),
        [[(set page_name "Application As-Is")(set ddiag $page_name)(set label_need "0")(load "SettingDiagramOutfile.tl")]]
        banner_ref3: $(BannerRef),
        [[(set page_name "DATA")(set ddiag $page_name)(set label_need "0")(load "SettingDiagramOutfile.tl")]]
        banner_ref4: $(BannerRef),
        [[(set page_name "Sites Overview")(set ddiag $page_name)(set label_need "0")(load "SettingDiagramOutfile.tl")]]
        banner_ref5: $(BannerRef),
        about_link: "https://spga.gov.sa/brief-about-authority",
    }
)"
"( ]` )"

//// set innerHTML by id
"( replace_innerHTML =`[ )"
"(
    { 
	    //// Bottom Bar
        Customer_Name: "SPGA",
    }
)"
"( ]` )"
]]
