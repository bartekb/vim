-- Fuzzy finder

return {
	-- https://github.com/nvim-telescope/telescope.nvim
	"nvim-telescope/telescope.nvim",
	lazy = true,
	branch = "0.1.x",
	dependencies = {
		-- https://github.com/nvim-lua/plenary.nvim
		{ "nvim-lua/plenary.nvim" },
		{
			-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	opts = {
		defaults = {
			layout_config = {
				vertical = {
					width = 0.75,
				},
			},
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--hidden",
				"--glob",
				"!{**/node_modules/**,**/.git/**,**/target/**,**/dist/**,**/build/**,**/out/**,**/vendor/**,**/obj/**,**/bin/**,**/cache/**,**/logs/**,**/tmp/**,**/deps/**,**/backup/**,**/node_modules/**,**/target/**,**/dist/**,**/build/**,**/out/**,**/vendor/**,**/obj/**,**/bin/**,**/cache/**,**/logs/**,**/tmp/**,**/deps/**,**/backup/**,**/undodir/*}",
			},
		},
		-- pickers = {
		-- 	find_files = {
		-- 		-- config specific to find_files goes here. :h telescope.builtin.find_files() for more info
		-- 		find_command = { --the command used by find_files
		-- 			'rg',
		-- 			'--files',
		-- 			'--color=never',
		-- 			'--line-number',
		-- 			'--column',
		-- 			'--hidden',
		-- 			'--smart-case',
		-- 			'--glob',
		-- 			'!{**/node_modules/**,**/.git/**,**/target/**,**/dist/**,**/build/**,**/out/**,**/vendor/**,**/obj/**,**/bin/**,**/cache/**,**/logs/**,**/tmp/**,**/deps/**,**/backup/**,**/node_modules/**,**/target/**,**/dist/**,**/build/**,**/out/**,**/vendor/**,**/obj/**,**/bin/**,**/cache/**,**/logs/**,**/tmp/**,**/deps/**,**/backup/**,**/undodir/*}',
		-- 		},
		-- 	},
		-- },
	},
	config = function(_, opts)
		require('telescope').setup {
			extensions = {
				fzf = {
					fuzzy = true,              -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case",  -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				}
			}
		}
		require('telescope').load_extension('fzf')
	end
}
