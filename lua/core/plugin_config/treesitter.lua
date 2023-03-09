require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = {
		"c",
		"lua",
		"rust",
		"ruby",
		"vim",
		"java",
		"javascript",
		"python"},
	sync_install = false,
	auto_install = true,
	hightlight = {
		enable = true,
	},
}
