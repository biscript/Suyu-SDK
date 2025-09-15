local Layout = require "library.luigi.layout"
local Backend = require "library.luigi.backend"

local layout = Layout {
	type = "window",
	text = "Suyu SDK",
	id = "mainWindow",
	{
		type = "menu",
		{
			text = "Project",
			{
				text = "Create project",
				id = "createProject",
				startcut = "ctrl-c",
				status = "Create a project",
			},
			{
				text = "Open project",
				id = "openProject",
				standart = "ctrl-o",
				status = "Open a project",
			},
			{
				text = "Quit program",
				id = "quitProgram",
				standart = "ctrl-q",
			},
		},
		{
			text = "View",
			{
				text = "FullScrenn Mode",
				id = "fullScreenMode",
				standart = "ctrl-f",
			},
		},
		{
			text = "Info",
			{
				text = "About Suyu SDK",
				id = "aboutProgram",
			},
			{
				text = "Licences",
				id = "licences",
			}
		}
	}
}

layout.quitProgram:onPress ( function  ()
	os.exit()
end )

layout:show()