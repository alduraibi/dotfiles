-- plugins/cmp/dictionary/init.lua

local dict_path = ''
if os.getenv('XDG_CONFIG_HOME') then
  dict_path = os.getenv('XDG_CONFIG_HOME') .. '/nvim/dict/'
else
  dict_path = os.getenv('HOME') .. '.config/nvim/dict/'
end

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
