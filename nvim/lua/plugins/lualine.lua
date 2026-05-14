return {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
        -- ✅ Stable options
        opts.options = {
            theme = "auto",
            globalstatus = true,

            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },

            refresh = {
                statusline = 200,
            },
        }

        -- ✅ LEFT side
        opts.sections.lualine_a = { "mode" }

        opts.sections.lualine_b = {
            {
                "branch",
                icon = "",
            },
        }

        opts.sections.lualine_c = {
            {
                "filename",
                path = 0, -- 0 = filename only, 1 = short path
            },
        }

        -- ✅ RIGHT side
        opts.sections.lualine_x = {
            {
                "diagnostics",
                sources = { "nvim_diagnostic" },

                -- ✅ Only show when there ARE issues
                sections = { "error", "warn" },

                symbols = {
                    error = " ",
                    warn = " ",
                },

                colored = true,
                update_in_insert = false,
                always_visible = false, -- ✅ only appears if errors exist
            },
        }

        -- ❌ remove percentage
        opts.sections.lualine_y = {}

        -- ✅ location + time
        opts.sections.lualine_z = {
            { "location" },
            { "datetime", style = "%H:%M" },
        }

        return opts
    end,
}
