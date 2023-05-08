---@type ChadrcConfig 
require "custom.set"

local M = {}
M.ui = {
  theme = 'bearded-arc',
  tabufline = {
    enabled = false
  }
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
