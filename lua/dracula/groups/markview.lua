local util = require("dracula.util")

local M = {}

M.url = "git@github.com:OXY2DEV/markview.nvim"

---@type DraculaHighlightsFn
function M.get(c)
  local ret = {
    MarkviewCode = { bg = c.dark_bg },
    MarkviewCodeFg = { fg = c.fg },
    MarkviewInlineCode = "@markup.raw.markdown_inline",
  }

  for i, color in ipairs(c.rainbow) do
    local bg = util.blend_bg(color, 0.1)

    ret["MarkviewPalette" .. i] = { fg = color, bg = bg }
    ret["MarkviewPalette" .. i .. "Fg"] = { fg = color, bold = true }
    ret["MarkviewPalette" .. i .. "Bg"] = { bg = bg }
    ret["MarkviewPalette" .. i .. "Sign"] = { fg = color, bold = true }
  end

  return ret
end

return M
