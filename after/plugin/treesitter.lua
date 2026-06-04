require'nvim-treesitter.configs'.setup {
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Fix Neovim 0.10+ match format: entries are arrays, not single nodes
-- Prevents "attempt to call method 'range' (a nil value)" in get_node_text
local orig_get_node_text = vim.treesitter.get_node_text
vim.treesitter.get_node_text = function(node, source, opts)
  if type(node) == "table" then
    node = node[1]
  end
  return orig_get_node_text(node, source, opts)
end
