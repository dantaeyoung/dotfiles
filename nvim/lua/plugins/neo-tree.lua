return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["/"] = "noop",  -- Disable forward slash to use vim's native search
                }
            }
        })
        
        vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-g>', ':Neotree reveal<CR>', { noremap = true, silent = true })
    end
}
