-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local opts = {}
require("options")
require("lazy").setup("plugins", {
  change_detection = {
    notify = false,
  },
})
vim.cmd.colorscheme("rose-pine")

-- start of transparency stuff

local state_file = vim.fn.stdpath("config") .. "/transparency_state.txt"

local function save_transparency_state(is_transparent)
  vim.fn.writefile({ is_transparent and "true" or "false" }, state_file)
end

local function load_transparency_state()
  local ok, contents = pcall(vim.fn.readfile, state_file)
  return ok and contents[1] == "true"
end

local function apply_transparency(is_transparent)
  if is_transparent then
    vim.cmd [[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi EndOfBuffer guibg=NONE ctermbg=NONE
    ]]
  else
    if vim.g.colors_name then
      vim.cmd("colorscheme " .. vim.g.colors_name)
    end
  end
end

local function toggle_transparency()
  local is_transparent = load_transparency_state()
  is_transparent = not is_transparent

  apply_transparency(is_transparent)
  save_transparency_state(is_transparent)
end

vim.keymap.set("n", "<leader>k", toggle_transparency, { desc = "Toggle transparency", silent = true })

vim.defer_fn(function()
  local is_transparent = load_transparency_state()
  apply_transparency(is_transparent)
end, 100)
-- end of transparency stuff
