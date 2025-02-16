-- coc.nvim を packer.nvim で管理している場合の例
return {
  "neoclide/coc.nvim",
  config = function()
    -- Tab キーで補完候補を選択
    vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? "<C-r>=coc#pum#next()<CR>" : "<TAB>"', { expr = true })

    -- Enter キーで補完を確定
    vim.keymap.set("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { expr = true })

    -- Ctrl + Space で補完を起動
    vim.keymap.set("i", "<C-Space>", "coc#refresh()")

    -- K でホバー情報を表示
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")

    -- gD で定義へジャンプ
    vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>")

    -- gd で宣言へジャンプ
    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>")

    -- gr で参照を検索
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")

    -- <leader>rn でリネーム
    vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")

    -- <leader>f でフォーマット
    vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
  end,
}
