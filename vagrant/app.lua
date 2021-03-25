local lapis = require('lapis')
local app = lapis.Application()

app:get('/', function()
  return {
    json = {
      message = 'Lapis ' .. require('lapis.version')
    }
  }
end)

return app
