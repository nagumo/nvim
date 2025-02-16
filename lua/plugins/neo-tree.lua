return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignore = false,
        hide_by_patterns = {
          ".git",
          ".gitignore",
          ".DS_Store",
          ".vscode",
          ".idea",
          ".vs",
          ".cache",
          ".clangd",
          ".mypy_cache",
          ".pytest_cache",
          "__pycache__",
        },
      },
    },
    window = {},
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)

    -- ファイル変更時にリフレッシュ
    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        require("neo-tree.sources.manager").refresh("filesystem")
      end,
    })
  end,
}
