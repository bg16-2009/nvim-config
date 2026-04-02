return {
	{
		"vyfor/cord.nvim",
		build = ":Cord update",
		opts = {
			hooks = {
				workspace_change = function(opts)
					if opts.workspace == "notes" then
						opts.manager:hide()
					else
						opts.manager:resume()
					end
				end,
				post_activity = function(_, activity)
					activity.timestamps.start = 1000212360 -- ¯\_(ツ)_/¯
				end,
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 noet
