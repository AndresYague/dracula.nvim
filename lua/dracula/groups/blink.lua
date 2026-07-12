local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type DraculaHighlightsFn
function M.get(c)
  local ret = {
    BlinkCmpDoc = { fg = c.fg, bg = c.float_bg },
    BlinkCmpDocBorder = { fg = c.border, bg = c.float_bg },
    BlinkCmpGhostText = { fg = c.inactive },
    BlinkCmpKindCodeium = { fg = c.teal, bg = c.none },
    BlinkCmpKindCopilot = { fg = c.teal, bg = c.none },
    BlinkCmpKindDefault = { fg = c.dark_fg, bg = c.none },
    BlinkCmpKindSupermaven = { fg = c.teal, bg = c.none },
    BlinkCmpKindTabNine = { fg = c.teal, bg = c.none },
    BlinkCmpLabel = { fg = c.fg, bg = c.none },
    BlinkCmpLabelDeprecated = { fg = c.gutter_fg, bg = c.none, strikethrough = true },
    BlinkCmpLabelMatch = { fg = c.match_cmp, bg = c.none },
    BlinkCmpMenu = { fg = c.comment, bg = c.float_bg },
    BlinkCmpMenuBorder = { fg = c.border, bg = c.float_bg },
    BlinkCmpSignatureHelp = { fg = c.fg, bg = c.float_bg },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg = c.float_bg },

    -- blink.indent
    BlinkIndent = { link = "Whitespace" },
    BlinkIndentScope = { fg = c.purple },
    BlinkIndentRed = { fg = c.red },
    BlinkIndentOrange = { fg = c.orange },
    BlinkIndentYellow = { fg = c.yellow },
    BlinkIndentGreen = { fg = c.green },
    BlinkIndentCyan = { fg = c.cyan },
    BlinkIndentBlue = { fg = c.cyan },
    BlinkIndentViolet = { fg = c.purple },

    -- blink.pairs
    BlinkPairsOrange = { fg = c.orange },
    BlinkPairsPurple = { fg = c.purple },
    BlinkPairsBlue = { fg = c.cyan },
    BlinkPairsUnmatched = { fg = c.red },
    BlinkPairsMatchParen = { fg = c.yellow, bold = true },
  }

  require("dracula.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
