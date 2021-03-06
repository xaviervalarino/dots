require 'gitsigns'.setup {
  signs = {
    add = { hl = "GitSignsAdd", text = "█", numhl = "GitSignsAddNr" },
    change = { hl = "GitSignsChange", text = "█", numhl = "GitSignsChangeNr" },
    delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr" },
    topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr" },
    changedelete = { hl = "GitSignsDelete", text = "~", numhl = "GitSignsChangeNr" },
  },
  numhl = true,
  linehl = false,
  word_diff = false,
}
