return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    opts = {
        options = {
            mode = "buffers",

            -- ✅ Remove separators completely
            separator_style = { "", "" },

            -- ✅ Clean UI
            show_buffer_close_icons = false,
            show_close_icon = false,
            numbers = "none",

            -- ✅ Compact feel (this is your "smaller font" effect)
            tab_size = 12,
            max_name_length = 12,

            always_show_bufferline = false,

            -- ✅ Diagnostics (minimal)
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(count, level)
                local icon = level:match("error") and " " or " "
                return " " .. icon .. count
            end,
        },

        highlights = {
            -- ✅ Transparent background everywhere
            fill = {
                bg = "none",
            },
            background = {
                bg = "none",
                fg = "#6c7086",
                italic = true, -- ✅ restore italic inactive buffers
            },

            -- ✅ Active buffer
            buffer_selected = {
                bg = "none",
                fg = "#cdd6f4",
                bold = true,
                italic = false,
            },

            -- ✅ Visible buffers
            buffer_visible = {
                bg = "none",
                fg = "#a6adc8",
                italic = true,
            },

            -- ✅ Remove separator visuals completely
            separator = {
                fg = "none",
                bg = "none",
            },
            separator_selected = {
                fg = "none",
                bg = "none",
            },
            separator_visible = {
                fg = "none",
                bg = "none",
            },
        },
    },
}
