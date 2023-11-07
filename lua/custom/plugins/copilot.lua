return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	opts = {
		suggestion = {
			auto_trigger = true,
			keymap = {
				accept = "<C-d>",
				dismiss = "<C-c>",
				accept_word = false,
				accept_line = false,
			},
		},
		filetypes = {
			gitcommit = true,
			markdown = true,
		}
	},
}
