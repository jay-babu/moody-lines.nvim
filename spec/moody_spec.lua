local moody = require("moody-lines")

-- Converts hex string like "#123456" to RGB integer
local function hex_to_rgb_decimal(hex)
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  return r * 65536 + g * 256 + b
end

describe("moody-lines.nvim", function()
  it("sets LineNrAbove and LineNrBelow to expected colors", function()
    local custom_above = "#123456"
    local custom_below = "#abcdef"

    moody.setup({
      above = custom_above,
      below = custom_below,
    })

    local hl_above = vim.api.nvim_get_hl(0, { name = "LineNrAbove" })
    local hl_below = vim.api.nvim_get_hl(0, { name = "LineNrBelow" })

    assert.are.equal(hex_to_rgb_decimal(custom_above), hl_above.fg)
    assert.are.equal(hex_to_rgb_decimal(custom_below), hl_below.fg)
  end)
end)
