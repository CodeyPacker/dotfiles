-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		mappings = {
			i = {
				["<c-k>"] = actions.move_selection_previous, -- move to prev result
				["<c-j>"] = actions.move_selection_next, -- move to next result
				["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
	extensions = {
		project = {
		  base_dirs = {
        { "~/sigil", max_depth = 4 },
        -- { "~/sigil/sites/adt", max_depth = 2 },
        -- { "~/sigil/sites/att", max_depth = 2 },
        -- { "~/sigil/sites/brightspeed", max_depth = 2 },
        -- { "~/sigil/sites/business-providers", max_depth = 2 },
        -- { "~/sigil/sites/centurylink", max_depth = 2 },
        -- { "~/sigil/sites/clearlink", max_depth = 2 },
        -- { "~/sigil/sites/dish", max_depth = 2 },
        -- { "~/sigil/sites/erc", max_depth = 2 },
        -- { "~/sigil/sites/forest", max_depth = 2 },
        -- { "~/sigil/sites/frontier", max_depth = 2 },
        -- { "~/sigil/sites/insurance", max_depth = 2 },
        -- { "~/sigil/sites/movearoo", max_depth = 2 },
        -- { "~/sigil/sites/verizon", max_depth = 2 },
        -- { "~/sigil/sites/viasat", max_depth = 2 },
        -- { "~/sigil/sites/vivint", max_depth = 2 },
        -- { "~/sigil/sites/windstream", max_depth = 2 },
      },
		},
	},
})

telescope.load_extension("fzf")
-- telescope.load_extension("project")
