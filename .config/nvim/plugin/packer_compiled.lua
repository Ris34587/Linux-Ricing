-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ris3/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/ris3/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/ris3/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/ris3/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ris3/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/thePrimeagen/harpoon"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\1\21ensure_installed\0\1\5\0\0\vlua_ls\fpyright\vclangd\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0Ñ\3\1\0\t\0\26\0'6\0\0\0'\2\1\0B\0\2\0023\1\2\0009\2\3\0009\2\4\0025\4\5\0=\1\6\0045\5\f\0005\6\n\0005\a\b\0005\b\a\0=\b\t\a=\a\v\6=\6\r\5=\5\14\4B\2\2\0019\2\15\0009\2\4\0025\4\16\0=\1\6\0045\5\20\0005\6\18\0005\a\17\0=\a\19\6=\6\21\5=\5\14\4B\2\2\0019\2\22\0009\2\4\0025\4\23\0=\1\6\4B\2\2\0019\2\24\0009\2\4\0025\4\25\0=\1\6\4B\2\2\1K\0\1\0\1\0\1\14on_attach\0\vclangd\1\0\1\14on_attach\0\fpyright\18rust-analyzer\1\0\1\18rust-analyzer\0\16checkOnSave\1\0\1\16checkOnSave\0\1\0\1\fcommand\vclippy\1\0\2\14on_attach\0\rsettings\0\18rust_analyzer\rsettings\bLua\1\0\1\bLua\0\16diagnostics\1\0\1\16diagnostics\0\fglobals\1\0\1\fglobals\0\1\2\0\0\bvim\14on_attach\1\0\2\14on_attach\0\rsettings\0\nsetup\vlua_ls\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/home/ris3/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0Ñ\3\1\0\t\0\26\0'6\0\0\0'\2\1\0B\0\2\0023\1\2\0009\2\3\0009\2\4\0025\4\5\0=\1\6\0045\5\f\0005\6\n\0005\a\b\0005\b\a\0=\b\t\a=\a\v\6=\6\r\5=\5\14\4B\2\2\0019\2\15\0009\2\4\0025\4\16\0=\1\6\0045\5\20\0005\6\18\0005\a\17\0=\a\19\6=\6\21\5=\5\14\4B\2\2\0019\2\22\0009\2\4\0025\4\23\0=\1\6\4B\2\2\0019\2\24\0009\2\4\0025\4\25\0=\1\6\4B\2\2\1K\0\1\0\1\0\1\14on_attach\0\vclangd\1\0\1\14on_attach\0\fpyright\18rust-analyzer\1\0\1\18rust-analyzer\0\16checkOnSave\1\0\1\16checkOnSave\0\1\0\1\fcommand\vclippy\1\0\2\14on_attach\0\rsettings\0\18rust_analyzer\rsettings\bLua\1\0\1\bLua\0\16diagnostics\1\0\1\16diagnostics\0\fglobals\1\0\1\fglobals\0\1\2\0\0\bvim\14on_attach\1\0\2\14on_attach\0\rsettings\0\nsetup\vlua_ls\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\1\21ensure_installed\0\1\5\0\0\vlua_ls\fpyright\vclangd\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
