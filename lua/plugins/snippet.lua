return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" }, -- Optional for prebuilt snippets
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    -- Load VSCode-style snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Extend JavaScript snippets to TypeScript
    ls.filetype_extend("javascript", { "typescript" })

    -- Define custom snippet
    ls.snippets = {
      javascript = {
        s("dealThunk", {
          t('export const '), i(1, "createDeal"), t(' = createAsyncThunk(\n  "'),
          i(2, "deal/create"), t('",\n  async ('), i(3, "data"), 
          t(", { rejectWithValue }) => {\n    try {\n      const response = await axiosInstance.post("),
          t('"/'), i(4, "deal"), t('", '), i(3), 
          t(');\n      return response.data;\n    } catch (err) {\n      return rejectWithValue(err.response.data);\n    }\n  }\n);')
        })
      }
    }
  end
}

