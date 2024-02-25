-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe -NoLogo"
vim.opt.shellcmdflag =
"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
    let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    set shellquote= shellxquote=
    ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}


lvim.transparent_window = true
-- lvim.colorscheme = "aurora" -- aurora - solarized flat - gruvbox-material
-- lvim.colorscheme = "terafox" -- aurora - solarized flat - gruvbox-material
lvim.colorscheme = "blue"-- aurora - solarized flat - gruvbox-material

-- work
-- lvim.colorscheme = "nord"
--

lvim.plugins = {
  "ray-x/aurora",
  "ray-x/starry.nvim",
  "ishan9299/nvim-solarized-lua",
  "sainnhe/gruvbox-material",
  "shaunsingh/nord.nvim",
  {
    "craftzdog/solarized-osaka.nvim",
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent"
        },
      })
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    config = function() require("nightfox").setup({ transparent = true, terminal_colors = true,
      options = {
        styles = {
          sidebars ="transparent",
          floats = "transparent",
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        }
      }
    })
    end,

  }
}

vim.g.aurora_italic =  1
vim.g.aurora_darker = 1
vim.g.aurora_bold = 1
vim.g.aurora_transparent = 1

vim.g.starry_bold = true
vim.g.starry_italic = true
vim.g.starry_italic_comments = true
vim.g.starry_disable_background = true
vim.g.starry_deep_black = true
vim.g.starry_darker_contrast = true
vim.g.starry_italic_keywords = true
vim.g.starry_italic_functions = true
vim.g.starry_bold_keywords = true
vim.g.starry_bold_functions = true

lvim.builtin.lualine.style = "default" -- or "none"
lvim.builtin.lualine.options.theme = "carbonfox"
-- lvim.builtin.lualine.options.theme = "auto"
-- lvim.builtin.lualine.options.theme = "nord"
--
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
vim.opt.shiftwidth=4
vim.opt.wrap = true
vim.opt.linebreak= true


-- set textwidth=0
-- set wrapmargin=0
-- set wrap
-- set linebreak # (optional - breaks by word rather than character)
-- set columns=80 # <<< THIS IS THE IMPORTANT PART
--
--
