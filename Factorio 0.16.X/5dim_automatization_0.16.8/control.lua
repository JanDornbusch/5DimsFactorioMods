--Use ReduxLoader interface if mod is present
function init_supported_loaders()
	remote.call("loader-redux", "add_loader", "5d-loader-5")
	remote.call("loader-redux", "add_loader", "5d-loader-4")
	remote.call("loader-redux", "add_loader", "express-loader")
	remote.call("loader-redux", "add_loader", "fast-loader")
	remote.call("loader-redux", "add_loader", "loader")
end


if remote.interfaces["loader-redux"] then

	script.on_init(function()
		init_supported_loaders()
	end)
	
	script.on_configuration_changed(function()
		init_supported_loaders()
	end)

end
