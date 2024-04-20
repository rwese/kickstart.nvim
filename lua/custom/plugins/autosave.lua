vim.keymap.set('n', '<leader>n', ':ASToggle<CR>', { desc = 'Toggle autosave' })

function BufferHasErrors()
  local clients = vim.lsp.get_active_clients()

  if next(clients) == nil then
    return true
  end

  local diagnostics = vim.diagnostic.get(0)
  for _, diag in ipairs(diagnostics) do
    if diag.severity == vim.diagnostic.severity.ERROR then
      return true
    end
  end
  return false
end

return {
  'okuuva/auto-save.nvim',
  cmd = 'ASToggle',
  lazy = false,
  event = { 'InsertLeave', 'TextChanged' },
  opts = {
    trigger_events = { -- See :h events
      immediate_save = { 'BufLeave', 'FocusLost' }, -- vim events that trigger an immediate save
      defer_save = { 'InsertLeave', 'TextChanged' }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
      cancel_defered_save = { 'InsertEnter' }, -- vim events that cancel a pending deferred save
    },
    condition = function(buf)
      local fn = vim.fn
      local utils = require 'auto-save.utils.data'

      -- vim.notify('filetype: ' .. fn.getbufvar(buf, '&filetype'))
      -- vim.notify('filename: ' .. fn.expand '%')

      if not fn.getbufvar(buf, '&modifiable') == 1 then
        return false
      end

      if fn.expand '%' == '' then
        return false
      end

      if utils.not_in(fn.getbufvar(buf, '&filetype'), { 'autocmd', 'notify', 'oil' }) then
        if BufferHasErrors() then
          -- vim.notify('Autosave: Buffer has errors, not saving!', vim.log.levels.ERROR)
          return false
        end

        return true
      end

      return false
    end,
    write_all_buffers = false,
    debounce_delay = 2000,
  },
}
