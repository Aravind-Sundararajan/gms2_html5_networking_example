const PORT = 2323;

var logins = {};
var playerInfo = {};

const server = require('http').createServer();
const io = require('socket.io')(server);

// Listen for incoming connections
server.listen(PORT, (err) => {
    if (err) throw err;
    console.log(`Listening on port.. > ${PORT}`);
});

io.on('connection', (client) => {
    console.log(`New connection.. > '${client.id}'`);

    // Send clients SID
    client.emit('client_id', {
        client_id: client.id
    });

    client.on('login', (data) => {
        console.log(`login event data: > '${data}'`);
		logins[client.id] = data;
        //send same data back
        client.emit("login", data);
    });

	client.on('playerInfo', (data) => {
        console.log(`receive playerInfo  > '${client.id}' > '${data}'`);
		playerInfo[client.id] = data;
        //send same data back
        client.emit("playerInfo", data);
    });

    client.on('disconnect', (data) => {
        console.log(`Client disconnected.. > '${client.id}'`);
		delete logins[client.id];
		delete playerInfo[client.id];
    });

	client.on('asyncPlayerInfo', function() {
		var clients = io.sockets.clients();
		console.log(`syncing playerInfo > '${client.id}' > '${JSON.stringify(playerInfo)}'`);
		client.emit("asyncPlayerInfo", JSON.stringify(playerInfo));
	});
});
