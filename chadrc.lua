---@type ChadrcConfig 
require "custom.set"

local M = {}
M.ui = {
  theme = 'bearded-arc',
  tabufline = {
    enabled = false
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
