require 'indent_blankline'.setup {
  show_end_of_line = true,
  buftype_exclude = { 'terminal', 'help' },
  -- filetype_exlude = {}
  show_current_context = true,
  show_current_context_start = true,
  context_patterns = {
    'class',
    'function',
    'method',
    'element',
    '^if',
    '^while',
    '^for',
    '^object',
    '^table',
    'block',
    'arguments'
  }
}
