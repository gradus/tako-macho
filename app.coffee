coffeecup = require 'coffeecup'
fs = require 'fs'
tako = require 'tako'
app = tako()
app.route('/static/*').files('./static')

index = ''
fs.readFile('./pages/index.coffee', 'utf8', (err,data) -> index += data)

macho = -> coffeecup.render(index)

app.route('/').methods('GET').html (req, resp) ->
  resp.end macho()

app.httpServer.listen(3000)

