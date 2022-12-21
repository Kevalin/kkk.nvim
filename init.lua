require('kevalin.base')
require('kevalin.maps')
require('kevalin.plugins').setup()

local u = require('util.init')
if u.is_mac() then
  require('kevalin.macos')
end
if u.is_win() then
  require('kevalin.windows')
end
