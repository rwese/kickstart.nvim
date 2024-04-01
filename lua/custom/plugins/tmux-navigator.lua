return {
  'christoomey/vim-tmux-navigator',
  event = 'VimEnter',
  keys = {
    { '<C-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Navigate to the left pane' },
    { '<C-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Navigate to the pane below' },
    { '<C-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Navigate to the pane above' },
    { '<C-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Navigate to the right pane' },
    { '<C-\\>', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Navigate to the previous pane' },
  },
}
