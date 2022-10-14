vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

vim.opt.background = "dark"


vim.cmd("colorscheme tokyonight-moon")

-- vim.cmd(":hi normal guibg=000000") -- Transparent background


-- Status line config
require('lualine').setup {
    options = { theme = 'iceberg_dark' }
}

-- iceberg_dark, gruvbox-material, dracula

