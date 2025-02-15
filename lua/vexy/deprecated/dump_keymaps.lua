--[[
Was supposed to give me a more human readable list of keymaps, but I
quickly realized that the tools already available to me would suffice for now

I might revisit this thought in the future.
--]]

return {
  vim.api.nvim_create_user_command('DumpKeymaps', function()
    local file = io.open(vim.fn.expand '~' .. '/keymaps.txt', 'w')
    if not file then
      print 'Error: Could not open file for writing'
      return
    end

    for _, mode in ipairs { 'n', 'i', 'v', 'x', 's', 'o', 'c', 't' } do
      file:write('Mode: ' .. mode .. '\n')

      for _, keymap in ipairs(vim.api.nvim_get_keymap(mode)) do
        local desc = keymap.desc or '[No Description]'
        local rhs = keymap.rhs or '[Command]'
        file:write(string.format('%-15s -> %-30s | %s\n', keymap.lhs, rhs, desc))
      end

      file:write '\n'
    end

    file:close()
    print 'Keymaps dumped to ~/keymaps.txt with descriptions!'
  end, { desc = 'Dump all keymaps (with descriptions) to a text file' }),
}
