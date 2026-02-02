local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        opts = {
            style = "night",
            day_brightness = 0.2,
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                theme = "tokyonight",
            },
            sections = {
                lualine_x = {
                    {
                        function()
                            local status, _ = require("neocodeium").get_status()
                            if status == 0 then
                                return "󰚩 ON"
                            else
                                return "󰚩 OFF"
                            end
                        end,
                    },
                    "encoding",
                    "fileformat",
                    "filetype",
                },
            },
        },
    },
}
