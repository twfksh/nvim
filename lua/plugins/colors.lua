return {
  {
    'EdenEast/nightfox.nvim',
    -- config = function()
    --   require('nightfox').setup({ style = 'darker' })
    --   vim.cmd('colorscheme terafox')
    -- end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      local set_transparent = function()
        require("rose-pine").setup({
          variant = "auto",      -- auto, main, moon, or dawn
          dark_variant = "main", -- main, moon, or dawn
          dim_inactive_windows = false,
          extend_background_behind_borders = true,

          styles = {
            bold = true,
            italic = true,
            transparency = true, -- This is the key setting
          },

          groups = {
            -- Make these backgrounds transparent
            background = "none",
            panel = "none",
            border = "none",
            comment = "muted",
            link = "iris",
            punctuation = "subtle",

            -- Optional: more specific transparency
            error = "love",
            hint = "iris",
            info = "foam",
            warn = "gold",
          },

          highlight_groups = {
            -- Make common UI elements transparent
            Normal = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            Pmenu = { bg = "none" },
            PmenuSel = { bg = "none" },
            SignColumn = { bg = "none" },
            StatusLine = { bg = "none" },
            StatusLineNC = { bg = "none" },
            TabLine = { bg = "none" },
            TabLineFill = { bg = "none" },
            TabLineSel = { bg = "none" },
            VertSplit = { bg = "none" },
            WinSeparator = { bg = "none" },

            -- Make telescope transparent
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            TelescopePromptNormal = { bg = "none" },
            TelescopeResultsNormal = { bg = "none" },
            TelescopePreviewNormal = { bg = "none" },

            -- Make nvim-tree transparent
            NvimTreeNormal = { bg = "none" },
            NvimTreeNormalNC = { bg = "none" },
            NvimTreeEndOfBuffer = { bg = "none" },

            -- Make lualine transparent
            lualine_c_normal = { bg = "none" },
          },
        })
      end

      set_transparent()
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
