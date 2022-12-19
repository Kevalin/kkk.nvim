require('kevalin.base')
require('kevalin.maps')
require('kevalin.plugins').setup()

local has = vim.fn.has
local is_mac = has 'macunix'
local is_win = has 'win32'

if is_mac then
  require('kevalin.macos')
end
if is_win then
  require('kevalin.windows')
end
