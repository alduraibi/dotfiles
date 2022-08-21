-- plugins/luasnip.lua
local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "●", "LuaSnipChoiceNode" } },
      },
    },
    [types.insertNode] = {
      active = {
        virt_text = { { "●", "LuaSnipInsertNode" } },
      },
    },
  },
}

-- load snippets
require "config.utils.snippets" -- TODO: move to:
-- require("luasnip.loaders.from_lua").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()

