coffeecup = require 'coffeecup'
fs = require 'fs'
tako = require 'tako'

app = tako()
app.route('/static/*').files('./static')

index = ''
fs.readFile('./pages/index.coffee', 'utf8', (err,data) -> index += data)
macho = ''
fs.readFile('./pages/macho.coffee', 'utf8', (err,data) -> macho += data)

indexPage = -> coffeecup.render(index)
machoMan = -> coffeecup.render(macho)

app.route('/').methods('GET').html (req, resp) ->
  resp.end indexPage()

app.route('/macho').methods('GET').html (req, resp) ->
  resp.end machoMan()

app.httpServer.listen(3000)

