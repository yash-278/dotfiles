local colorscheme = "tokyonight"

require("tokyonight").setup({
  style = "night",
  transparent = false,
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  styles = {
    functions = "italic",
    comments = "italic",
  }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
