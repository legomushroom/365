
express     = require('express');
http        = require('http');
port        = 3000
app         = express();
mongo       = require 'mongoose'

app.set 'port', process.env.PORT or port
app.use express.bodyParser()
app.use express.methodOverride()
app.set('views', __dirname + '/views');
app.set('view engine', "jade");
app.engine('jade', require('jade').__express);
app.use(express.static(__dirname + '/public'));

schema = new mongo.Schema
            name:   String
            email:  String
            age:    Number

Users = mongo.model 'Users', schema

mongo.connect 'mongodb://localhost/helloExpress'

app.get '/', (req,res)->
    res.send 'it works!'

app.get '/api/', (req,res)->
    

io = require('socket.io').listen(app.listen(port))

io.sockets.on "connection", (socket) ->
	console.log 'connected'

	socket.on "posts:read", (data) ->
	    console.log 'read'    
	    console.log data    
    

