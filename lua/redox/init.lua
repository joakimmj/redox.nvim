local M = {}

local colors = require("redox.colors")
local highlights = require("redox.highlights")

local options = {
	style = "redox",
	transparent = false,
	terminal_colors = false,
}

function M.toggle_transparency()
	options.transparent = not options.transparent
	highlights.set_transparency(colors.schemes[options.style], options.transparent)
end

function M.setup(opts)
	opts = opts or {}
	if opts.style ~= nil then
		options.style = opts.style
	end
	if opts.transparent ~= nil then
		options.transparent = opts.transparent
	end
	if opts.terminal_colors ~= nil then
		options.terminal_colors = opts.terminal_colors
	end

	local scheme = colors.schemes[options.style]
	if scheme == nil then
		vim.notify("redox.nvim: invalid style '" .. options.style .. "'", vim.log.levels.ERROR)
		return
	end

	vim.opt.termguicolors = true
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = options.style

	highlights.set_transparency(scheme, options.transparent)
	highlights.set_colors(scheme)

	if options.terminal_colors then
		highlights.set_terminal_colors(scheme)
	end
end

return M
