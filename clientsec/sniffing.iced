http=require 'http'
if process.argv.length!=3
  console.error """
  这是一个简单的WebServer，收到任何HTTP请求时只会在控制台偷偷地记下请求的地址（当然还包括参数）。
  用法: iced sniffing.iced 端口号
  """
  process.exit 1
  return
server=http.createServer (req,res)->
  console.log req.url
  res.end()
server.listen Number process.argv[2]