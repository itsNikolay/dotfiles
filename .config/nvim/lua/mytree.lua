require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = false,
    -- keymaps = {
    --   init_selection = "gnn",
    --   node_incremental = "grn",
    --   scope_incremental = "grc",
    --   node_decremental = "grm",
    -- },
  }
}
