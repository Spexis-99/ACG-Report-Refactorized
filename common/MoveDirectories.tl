[[

	////
	//// This template file create a new directory image and transfer all the
	//// files from tempaltes image directory to generated image directory.
	////

	(set copyfromdir (append (ctdrive) (ctdir "\\")))
	(set copytodir $outdirpath)

	////********************************************************************************
	//// Copying the Images, Help, Scripts & Styles directories to the output directory.
	////********************************************************************************

	(set copyfromfiles (append "\"" (append $copyfromdir "\\FoldersToCopy\" ")))
	(set copytofiles (append "\"" (append $copytodir "\" ")))
	(set command (append "xcopy " (append $copyfromfiles (append $copytofiles "/e /q /i /y"))))
	(set copystatus (execute command))

	(if (not (= $copystatus $zero))
		(
			(set copytoimages (append "\"" (append $copytodir "\\Images\"")))
			(set copytoimages30px (append "\"" (append $copytodir "\\Images\\30px\"")))
			(set copytoimages20px (append "\"" (append $copytodir "\\Images\\20px\"")))
			(set copytoimagestree (append "\"" (append $copytodir "\\Images\\Tree\"")))
			(set copytoimagesbanner (append "\"" (append $copytodir "\\Images\\Banner\"")))
			(set copytostyles (append "\"" (append $copytodir "\\Styles\"")))
			(set copytohelpfiles (append "\"" (append $copytodir "\\HelpFiles\"")))
			(set copytoscripts (append "\"" (append $copytodir "\\Scripts\"")))

			(set command (append "mkdir " (append $copytoimages "\"")))
			(set commandstatus (execute $command))
			
			(set command (append "mkdir " (append $copytoimages30px "\"")))
			(set commandstatus (execute $command))
			
			(set command (append "mkdir " (append $copytoimages20px "\"")))
			(set commandstatus (execute $command))
			
			(set command (append "mkdir " (append $copytoimagestree "\"")))
			(set commandstatus (execute $command))
			
			(set command (append "mkdir " (append $copytoimagesbanner "\"")))
			(set commandstatus (execute $command))

			(set command (append "mkdir " (append $copytostyles "\"")))
			(set commandstatus (execute $command))

			(set command (append "mkdir " (append $copytohelpfiles "\"")))
			(set commandstatus (execute $command))
			
			(set command (append "mkdir " (append $copytoscripts "\"")))
			(set commandstatus (execute $command))

			(set copyfromdir (append (ctdrive) (ctdir "\\")))

			////********************************************************
			//// Copying the "Images" directory to the output directory.
			////********************************************************

			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Images\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoimages))
			(set copystatus (execute command))
			
			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Images\\30px\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoimages30px))
			(set copystatus (execute command))
			
			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Images\\20px\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoimages20px))
			(set copystatus (execute command))

			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Images\\Tree\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoimagestree))
			(set copystatus (execute command))
			
			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Images\\Banner\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoimagesbanner))
			(set copystatus (execute command))

			////********************************************************
			//// Copying the "Styles" directory to the output directory.
			////********************************************************

			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Styles\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytostyles))
			(set copystatus (execute command))

			////***********************************************************
			//// Copying the "HelpFiles" directory to the output directory.
			////***********************************************************

			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\HelpFiles\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytohelpfiles))
			(set copystatus (execute command))

			////******************************************************************
			//// Copying the "SearchFiles" directory files to the output directory.
			////******************************************************************

			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\SearchFiles\\*.*\" "))
			(set command (append (append (append (append "copy \"" $copyfromfiles) "\"") $copytodir) "\""))
			(set copystatus (execute command))
			
			////**************************************************************
			//// Copying the "Scripts" directory files to the output directory.
			////**************************************************************
			
			(set copyfromfiles (append $copyfromdir "\\FoldersToCopy\\Scripts\\*.*\" "))
			(set command (append (append "copy \"" $copyfromfiles)  $copytoscripts))
			(set copystatus (execute command))
		)
	)
	
	////********************************************************************
	//// Copying the "SearchFiles" directory files to the output directory.
	////********************************************************************

	(set copyfromfiles (append $copyfromdir "\\SearchFiles\\*.*\" "))
	(set command (append (append (append (append "copy \"" $copyfromfiles) "\"") $copytodir) "\""))
	(set copystatus (execute command))

]]