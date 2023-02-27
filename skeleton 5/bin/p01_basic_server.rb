require 'rack'
require 'byebug'

app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    # debugger
    stuff = req.path_info
    res.write(stuff)
    res.finish
end

Rack::Server.start(app: app, Port: 3000)