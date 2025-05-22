return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "moon",
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      day_brightness = 0.3,
      dim_inactive = false,
      lualine_bold = false,
      on_colors = function(colors)
        colors.fg_gutter = "#b2b8cf"
      end,

      on_highlights = function(highlights, colors) end,

      cache = true,
      plugins = {
        all = package.loaded.lazy == nil,

        auto = true,

      },
    })

    vim.cmd("colorscheme tokyonight-storm")
  end
}
