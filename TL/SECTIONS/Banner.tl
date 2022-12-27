[[

(outfile "Banner.html")


(set diagram_class "#DIAGRAM")
(set diagram_list $diagram_class.#CLASS::CLASS/instances)

(set banner_xxx "#DIAGRAM::#diagram types")
    (set banner_title_func "*DIAGRAM::Title")
    (set banner_comments_func "*DIAGRAM::Comments")
(foreach banner_reff $banner_xxx
    (
        "(
            $($banner_ref.$banner_title_func) - 
            $($banner_ref.$Comments)


        )"
    )
)


(set page_name "الاستراتيجية")(set ddiag $page_name)(set label_need "0")(load "TL/CORE/SettingDiagramOutfile.tl")
(set banner_ref1 $BannerRef)

(set page_name "الاعمال")(set ddiag $page_name)(set label_need "0")(load "TL/CORE/SettingDiagramOutfile.tl")
(set banner_ref2 $BannerRef)

(set page_name "Application As-Is")(set ddiag $page_name)(set label_need "0")(load "TL/CORE/SettingDiagramOutfile.tl")
(set banner_ref3 $BannerRef)

(set page_name "DATA")(set ddiag $page_name)(set label_need "0")(load "TL/CORE/SettingDiagramOutfile.tl")
(set banner_ref4 $BannerRef)

(set page_name "Sites Overview")(set ddiag $page_name)(set label_need "0")(load "TL/CORE/SettingDiagramOutfile.tl")
(set banner_ref5 $BannerRef)

(set about_link "https://spga.gov.sa/brief-about-authority")


(load "HTML/SECTIONS/Banner.html")
]]