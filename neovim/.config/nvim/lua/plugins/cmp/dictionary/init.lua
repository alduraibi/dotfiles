-- plugins/cmp/dictionary/init.lua

dict_path = vim.fn.stdpath('config') .. '/dict/'

require('cmp_dictionary').setup({
  dic = {
    -- If you always use the English dictionary, The following settings are suitable:
    ['*'] = dict_path .. 'en',
    spelllang = {
      -- If you want to switch between English and Arabic.
      en = dict_path .. 'en',
      ar = dict_path .. 'ar',
    },
  },
})
