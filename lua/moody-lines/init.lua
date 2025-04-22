local M = {}

local function random_hex_color()
  return string.format("#%06x", math.random(0, 0xFFFFFF))
end

math.randomseed(os.time())

-- Default colors
local DEFAULT_SETTINGS = {
  above = random_hex_color(), -- random color
  below = random_hex_color(), -- random color
}

M._DEFAULT_SETTINGS = DEFAULT_SETTINGS
M.current = M._DEFAULT_SETTINGS

function M.setup(opts)
  opts = opts or {}
  -- Merge user options with default options
  M.current = vim.tbl_deep_extend("force", {}, M.current, opts)

  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = M.current.above })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = M.current.below })
end

return M
