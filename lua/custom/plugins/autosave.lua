vim.keymap.set("n", "<leader>n", ":ASToggle<CR>", {desc="Toggle autosave"})

return {
  'okuuva/auto-save.nvim',
  cmd = 'ASToggle',
  lazy = false,
  event = { 'InsertLeave', 'TextChanged' },
  opts = {
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")

      -- vim.notify("filetype: " .. fn.getbufvar(buf, "&filetype"))
      if
        fn.getbufvar(buf, "&modifiable") == 1 and
        utils.not_in(fn.getbufvar(buf, "&filetype"), {'autocmd', 'notify', 'oil'}) then
        return true
      end
      return false
    end,
    write_all_buffers = false,
  },
}
